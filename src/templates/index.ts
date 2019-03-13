import * as defineClass from "./defineClass.handlebars";

import * as enumTemplate from "./enum.handlebars";
import * as type from "./type.handlebars";
import * as union from "./union.handlebars";
import * as fragment from "./fragment.handlebars";
import * as operation from "./operation.handlebars";

import * as schema from "./schema.handlebars";
import * as documents from "./documents.handlebars";

import * as index from "./index.handlebars";

export default index;

export {
  defineClass,
  fragment,
  enumTemplate as enum,
  operation,
  type,
  union,
  schema,
  documents
};
