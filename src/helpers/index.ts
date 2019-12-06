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
} from "./utils";

export {
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

  transformCharacters,
};
