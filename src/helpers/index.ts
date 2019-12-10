import { helpers as gqlHelpers } from "graphql-codegen-plugin-handlebars-helpers";
import { toPascalCase } from "@graphql-codegen/plugin-helpers";

import expectedGeneratedFileFor from "./expected-generated-file-for";
import multilineComment from "./multiline-comment";
import classExtends from "./class-extends";
import resolveType from "./resolve-type";
import resolveMixins from "./resolve-mixins";
import hackFragmentFields from "./hack-fragment-fields";
import hackFragmentBaseTypes from "./hack-fragment-basetypes";
import ignoreType from "./ignore-type";
import withInputType, { registerInputType } from "./with-input-type";
import fragmentFieldOnBaseType from "./fragment-field-on-base-type";
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
  classExtends,
  resolveType,
  resolveMixins,
  hackFragmentFields,
  hackFragmentBaseTypes,
  ignoreType,
  withInputType,
  registerInputType,
  fragmentFieldOnBaseType,
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
    }
  };
}
