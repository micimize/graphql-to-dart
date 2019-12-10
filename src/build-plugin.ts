import * as Handlebars from "handlebars";
import { GraphQLSchema } from "graphql";
import {
  DocumentFile,
  schemaToTemplateContext,
  transformDocumentsFiles
} from "graphql-codegen-core";
import { PluginFunction } from "@graphql-codegen/plugin-helpers";
import { flattenTypes } from "graphql-codegen-plugin-helpers";
import configureHelpers from "./helpers";

type Scalars = Record<"String" | "Int" | "Float" | "Boolean" | "ID", string>;

interface MixinConfig {
  // the name of the mixin class
  name: string;
  // condition by which to mixin
  when?: {
    fields: Array<string>;
  };
}

export interface DartConfig {
  scalars?: Partial<Scalars>;
  imports?: Array<string>;
  parts?: Array<string>;
  mixins?: Array<MixinConfig>;
  // alias schema scalars to dart classes,
  // decorate references with @JsonKey(fromJson: fromJsonToScalar, toJson: fromScalarToJson)
  // provided from scalars file
  customScalars?: { [type: string]: string };
  // don't emit classes for these types,
  // merely alias their references
  replaceTypes?: { [type: string]: string };

  irreducibleTypes?: Array<string>;

  // mapping of regexs to replacement characters,
  // i.e. "^__": "u_" results in "__typename" -> "u_typename"
  // or "^_": "" results in "__typename" -> "typename"
  // default is { "_": "" }
  transformCharacters?: { [type: string]: string };
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

export default function buildPlugin(
  rootTemplate,
  partials
): PluginFunction<DartConfig> {
  return async (
    schema: GraphQLSchema,
    documents: DocumentFile[],
    config: DartConfig
  ): Promise<string> => {
    const templateContext = schemaToTemplateContext(schema);

    const transformedDocuments = transformDocumentsFiles(schema, documents);

    const flattenDocuments = flattenTypes(transformedDocuments);

    registerMapWith<Handlebars.HelperDelegate>(
      (...args) => Handlebars.registerHelper(...args),
      configureHelpers(config)
    );

    registerMapWith<Handlebars.Template<any>>(
      (...args) => Handlebars.registerPartial(...args),
      partials
    );

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
      return Handlebars.compile(rootTemplate)(handlebarsContext);
    } catch (e) {
      console.trace(e);
      throw e;
    }
  };
}
