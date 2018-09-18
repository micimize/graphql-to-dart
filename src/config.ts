import { EInputType, GeneratorConfig } from 'graphql-codegen-core';

import * as templates from './templates'
import * as customHelpers from './helpers'

export const config: GeneratorConfig = {
  inputType: EInputType.SINGLE_FILE,
  customHelpers,
  templates,
  flattenTypes: true,
  primitives: {
    String: 'String',
    Int: 'int',
    Float: 'double',
    Boolean: 'bool',
    ID: 'String',
  },
  outFile: 'graphql_jaguar.dart' // default output file name
};
