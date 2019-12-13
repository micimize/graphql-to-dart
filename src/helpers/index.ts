import { helpers as gqlHelpers } from "graphql-codegen-plugin-handlebars-helpers";
import { toPascalCase } from "@graphql-codegen/plugin-helpers";

import expectedGeneratedFileFor from "./expected-generated-file-for";
import multilineComment from "./multiline-comment";
import configureClassExtends, { configureResolveMixins } from "./class-extends";
import configureResolveType from "./resolve-type";
import hackFragmentFields from "./hack-fragment-fields";
import hackFragmentBaseTypes from "./hack-fragment-basetypes";
import ignoreType from "./ignore-type";
import fragmentClassNames from "./fragment-class-names";

import {
  log,
  logThis,
  concat,
  eachBackwards,
  takeFirst,
  camelCase,
  stripSuffix,
  transformCharacters,
  wrapFields
} from "./utils";

function wrapHelpers<T>(helpers: T) {
  return Object.keys(helpers).reduce(
    (wrapped, h) => ((wrapped[h] = _logErrors(helpers[h])), wrapped),
    {}
  ) as T & { [key: string]: Handlebars.HelperDelegate };
}

function _logErrors(fn) {
  return (...args) => {
    try {
      // console.log(fn.name, args.slice(0, -1))
      return fn(...args);
    } catch (e) {
      console.error(
        `ERROR ${e} thrown by helper ${fn.name}(${args.slice(0, -1)})`
      );
      throw e;
    }
  };
}

const helpers = wrapHelpers({
  ...gqlHelpers,
  toPascalCase,
  log,
  logThis,
  takeFirst,
  camelCase,
  concat,
  eachBackwards,
  stripSuffix,
  multilineComment,
  hackFragmentFields,
  hackFragmentBaseTypes,
  ignoreType,
  fragmentClassNames,

  expectedGeneratedFileFor,
  transformCharacters,
  wrapFields
});

export default function configureHelpers(config) {
  return {
    ...helpers,
    dartName(name: string): string {
      return helpers.transformCharacters(name, config.transformCharacters);
    },
    resolveType: configureResolveType(config),
    classExtends: configureClassExtends(config),
    resolveMixins: configureResolveMixins(config)
  };
}
