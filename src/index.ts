import * as Handlebars from "handlebars";
import {
  DocumentFile,
  schemaToTemplateContext,
  transformDocumentsFiles,
} from "graphql-codegen-core";
import { helpers } from "graphql-codegen-plugin-handlebars-helpers";
import { PluginFunction, toPascalCase } from "@graphql-codegen/plugin-helpers";

import { flattenTypes } from "graphql-codegen-plugin-helpers";
import { GraphQLSchema } from "graphql";
import * as customHelpers from "./helpers";
import documentsTemplate, * as partials from "./templates/documents";
import { print } from "util";



type Scalars = Record<"String" | "Int" | "Float" | "Boolean" | "ID", string>;

interface MixinConfig {
  // the name of the mixin class
  name: string;
  // condition by which to mixin
  when?: {
    fields: Array<string>;
  };
}

// generate fragment-related utility methods
// would strongly advise against using - will probably be deprecated
interface GenerateFragmentHelpersConfig {
  excludeFields?: Array<{
    prefix?: string;
    suffix?: string;
    onType?: string;
  }>;
}

export interface DartConfig {
  scalars?: Partial<Scalars>;
  imports?: Array<string>;
  parts?: Array<string>;
  generateFragmentHelpers: boolean | GenerateFragmentHelpersConfig;
  mixins?: Array<MixinConfig>;
  // alias schema scalars to dart classes,
  // decorate references with @JsonKey(fromJson: fromJsonToScalar, toJson: fromScalarToJson)
  // provided from scalars file
  customScalars?: { [type: string]: string };
  // don't emit classes for these types,
  // merely alias their references
  replaceTypes?: { [type: string]: string };

  irreducibleTypes?: Array<string>;

  // mapping of characters to replacement characters,
  // i.e. "__": "u_" results in "__typename" -> "u_typename"
  // or "_": "" results in "__typename" -> "typename"
  // default is { "_": "" }
  transformCharacters?: { [type: string]: string }
}

const defaultScalars: Scalars = {
  String: "String",
  Int: "int",
  Float: "double",
  Boolean: "bool",
  ID: "String"
};

function registerMapWith<T>(
  registerFn: (name: string, value: T) => void,
  object: { [name: string]: T }
) {
  Object.entries(object).forEach(([name, helper]) => registerFn(name, helper));
}

export const plugin: PluginFunction<DartConfig> = async (
  schema: GraphQLSchema,
  documents: DocumentFile[],
  config: DartConfig
): Promise<string> => {
  const templateContext = schemaToTemplateContext(schema);

  const transformedDocuments = transformDocumentsFiles(schema, documents);

  const flattenDocuments = flattenTypes(transformedDocuments);

  registerMapWith((...args) => Handlebars.registerHelper(...args), helpers);

  registerMapWith((...args) => Handlebars.registerHelper(...args), {
    toPascalCase,
    ...wrapHelpers(customHelpers)
  });
  registerMapWith((...args) => Handlebars.registerPartial(...args), partials);

  if (!config.transformCharacters){
      config.transformCharacters = { "_": "" }

  }

  const scalars = Object.assign(
    {},
    defaultScalars,
    config.scalars || {},
    config.customScalars || {}
  );
  const handlebarsContext = {
    config,
    primitives: scalars,
    scalars,
    ...templateContext,
    ...flattenDocuments
  };

  try {
    return Handlebars.compile(documentsTemplate)(handlebarsContext);
  } catch (e) {
      console.trace(e);
      throw e;
  }
};


function wrapHelpers(helpers){
    return Object.keys(helpers).reduce(
        (wrapped, h) => (
            wrapped[h] = _logErrors(helpers[h]),
            wrapped
        ), {})
}

function _logErrors(fn) {
    return (...args) => {
        try {
            // console.log(fn.name, args.slice(0, -1))
            return fn(...args);
        } catch(e) {
            console.error( `ERROR ${e} thrown by helper ${fn.name}(${args.slice(0, -1)})`)
            throw e;
        }
    }
};