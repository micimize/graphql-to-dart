import * as Handlebars from "handlebars";
import {
  PluginFunction,
  DocumentFile,
  schemaToTemplateContext,
  transformDocumentsFiles,
  toPascalCase
} from "graphql-codegen-core";
import { helpers } from "graphql-codegen-plugin-handlebars-helpers";
import { flattenTypes } from "graphql-codegen-plugin-helpers";
import { GraphQLSchema } from "graphql";
import * as customHelpers from "./helpers";
import indexTemplate, * as partials from "./templates";

type Scalars = Record<"String" | "Int" | "Float" | "Boolean" | "ID", string>;

export interface DartConfig {
  scalars?: Partial<Scalars>;
  imports?: Array<string>;
  parts?: Array<string>;
  // alias schema scalars to dart classes,
  // decorate references with @JsonKey(fromJson: fromJsonToScalar, toJson: fromScalarToJson)
  // provided from scalars file
  customScalars?: { [type: string]: string };
  // don't emit classes for these types,
  // merely alias their references
  replaceTypes?: { [type: string]: string };
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
    ...customHelpers
  });
  registerMapWith((...args) => Handlebars.registerPartial(...args), partials);

  const scalars = Object.assign(
    {},
    defaultScalars,
    config.scalars || {},
    config.customScalars || {}
  );
  const handlebarsContext = {
    templateContext: {
      ...templateContext,
      config,
      primitives: scalars
    },
    scalars,
    ...templateContext,
    ...flattenDocuments
  };

  return Handlebars.compile(indexTemplate)(handlebarsContext);
};
