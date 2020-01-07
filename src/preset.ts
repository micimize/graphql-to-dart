import { Types } from "@graphql-codegen/plugin-helpers";
import { join, parse, relative } from "path";
import { buildASTSchema, GraphQLSchema } from "graphql";

import { mergeDirectives } from "./build-plugin";

import { resolveDocumentImports } from "@graphql-codegen/near-operation-file-preset";

export function replaceExtension(baseFilePath: string, extension: string) {
  const parsedPath = parse(baseFilePath);

  return join(parsedPath.dir, parsedPath.name + extension).replace(/\\/g, "/");
}

export function clearExtension(path: string): string {
  const parsedPath = parse(path);

  return join(parsedPath.dir, parsedPath.name).replace(/\\/g, "/");
}

export type NearOperationFileConfig = {
  /**
   * @name schemaTypesPath
   * @type string
   * @description Required, should point to the base schema types file.
   * The key of the output is used a the base path for this file.
   *
   * @example
   * ```yml
   * generates:
   * src/:
   *  preset: graphql-to-dart
   *  presetConfig:
   *    schemaTypesPath: types.gql.dart
   * ```
   */
  schemaTypesPath: string;
  /**
   * @name packageName
   * @type string
   * @description Required, name of the package to generate types for.
   *
   * @example
   * ```yml
   * generates:
   * src/:
   *  preset: graphql-to-dart
   *  presetConfig:
   *    packageName: my_package_name
   * ```
   */
  packageName: string;
  /**
   * @name extension
   * @type string
   * @description Optional, sets the extension for the generated files.
   * @default .gql.dart
   *
   * @example
   * ```yml
   * generates:
   * src/:
   *  preset: graphql-to-dart
   *  presetConfig:
   *    extension: .generated.dart
   * ```
   */
  extension?: string;
};

export const preset: Types.OutputPreset<NearOperationFileConfig> = {
  buildGeneratesSection: options => {
    const schemaObject: GraphQLSchema = options.schemaAst
      ? options.schemaAst
      : buildASTSchema(options.schema);

    const extension = options.presetConfig.extension || ".gql.dart";
    let schemaTypesPath = options.presetConfig.schemaTypesPath;
    if (!schemaTypesPath.endsWith(".dart")) {
      schemaTypesPath = schemaTypesPath + extension;
    }

    const packageName = options.presetConfig.packageName;

    if (!schemaTypesPath) {
      throw new Error(
        `Preset "graphql-to-dart" requires you to specify "schemaTypesPath" configuration!`
      );
    }

    const sources = resolveDocumentImports(options, schemaObject, {
      generateFilePath(filePath: string) {
        return replaceExtension(
          join(
            options.baseOutputDir,
            relative(options.baseOutputDir, filePath)
          ),
          extension
        );
      },
      fragmentSuffix: "",
      generateImportStatement({
        relativeOutputPath,
        importSource,
        baseOutputDir
      }) {
        const [
          _,
          dartPackagePath = importSource.path
        ] = importSource.path.split("lib/");
        const importPath = `package:${join(packageName, dartPackagePath)}`;
        const importNames =
          importSource.names && importSource.names.length
            ? ` show ${importSource.names}`
            : "";
        const importAlias = importSource.namespace
          ? ` as ${importSource.namespace}`
          : "";
        return `import '${importPath}';`;
        /* TODO rexport of nested fragments still an issue
          ${ importAlias } ${ importNames };`;*/
      },

      schemaTypesSource: schemaTypesPath
    });

    return sources.map<Types.GenerateOptions>(
      ({
        importStatements: [typeImport, ...fragmentImports],
        externalFragments,
        ...source
      }) => {
        const toExport = options.config.integrateGqlCodeGenAst
          ? i =>
              i
                .replace(/^import/, "export")
                .replace(/\s*;?\s*$/, " hide document;")
          : i => i.replace(/^import/, "export");
        const config = {
          ...options.config,
          documents: mergeDirectives(options.config.documents, {
            imports: [typeImport, ...fragmentImports],
            exports: fragmentImports.map(toExport) // re-export nested fragments
          }),

          // This is set here in order to make sure the fragment spreads sub types
          // are exported from operations file
          exportFragmentSpreadSubTypes: true,
          externalFragments
        };

        return {
          ...source,
          plugins: options.plugins,
          pluginMap: options.pluginMap,
          config,
          schema: options.schema,
          schemaAst: schemaObject,
          skipDocumentsValidation: true
        };
      }
    );
  }
};
