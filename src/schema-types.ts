import * as Handlebars from "handlebars";
import {
  DocumentFile,
  schemaToTemplateContext,
  toPascalCase
} from "graphql-codegen-core";

import { PluginFunction  } from "@graphql-codegen/plugin-helpers";

import { helpers } from "graphql-codegen-plugin-handlebars-helpers";
import { GraphQLSchema } from "graphql";
import * as customHelpers from "./helpers";
import schemaTemplate, * as partials from "./templates/schema";


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
  // decorate references with @{customScalar}JsonConverter
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

  registerMapWith((...args) => Handlebars.registerHelper(...args), helpers);

  registerMapWith((...args) => Handlebars.registerHelper(...args), {
    toPascalCase,
    ...customHelpers
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
  };

  return Handlebars.compile(schemaTemplate)(handlebarsContext);
};
