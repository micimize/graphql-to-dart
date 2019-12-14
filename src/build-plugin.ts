import * as Handlebars from "handlebars";
import { GraphQLSchema } from "graphql";
import {
  DocumentFile,
  schemaToTemplateContext,
  transformDocumentsFiles
} from "graphql-codegen-core";
import { PluginFunction } from "@graphql-codegen/plugin-helpers";
import { flattenTypes } from "graphql-codegen-plugin-helpers";
import configureHelpers, { Config as HelperConfig } from "./helpers";
import { dedupe } from "./helpers/utils";

type Scalars = Record<"String" | "Int" | "Float" | "Boolean" | "ID", string>;

type DartFileDirectives = {
  imports?: string[];
  parts?: string[];
  exports?: string[];
};

export type DartConfig = HelperConfig & {
  scalars?: Partial<Scalars>;
  // alias schema scalars to dart classes,
  // decorate references with @JsonKey(fromJson: fromJsonToScalar, toJson: fromScalarToJson)
  // provided from scalars file
  customScalars?: { [type: string]: string };

  // don't emit classes for these types,
  // merely alias their references
  replaceTypes?: { [type: string]: string };

  irreducibleTypes?: Array<string>;

  /**
   * Mapping of regexs to replacement characters.
   * @example `{ "^_": "underscored" }` results in "__typename" -> "underscoredTypename"
   * @example `{ "^_": "u_" }` results in "__typename" -> "u_typename" for snakecase support
   * @default `{ "^_+": "" }` resulting in  "typename" -> "typename"
   */
  transformCharacters?: { [type: string]: string };

  schema?: DartFileDirectives;
  documents?: DartFileDirectives;

  /**
   * build_runner generated file template
   * @example "{{sourceFileBaseName}}.generated.dart"
   * 
   * commented out as it would mostly be misused
  generatedFileTemplate?: string;
  */
};

export const defaultDirectives = {
  imports: [
    "package:meta/meta.dart",
    "package:json_annotation/json_annotation.dart"
  ],
  parts: [],
  exports: []
};

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
  route: "schema" | "documents",
  rootTemplate,
  partials,
  dartDirectives: DartFileDirectives
): PluginFunction<DartConfig> {
  return async (
    schema: GraphQLSchema,
    documents: DocumentFile[],
    config: DartConfig
  ): Promise<string> => {
    config[route] = Object.assign(
      {
        imports: [],
        parts: [],
        exports: []
      },
      config[route]
    );

    for (let directive of ["imports", "exports", "parts"]) {
      config[route][directive] = dedupe([
        ...(dartDirectives[directive] || []),
        ...(config[route][directive] || [])
      ]);
    }

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
