const { SafeString } = require("handlebars");

function interpolateTemplate(template, params) {
  const names = Object.keys(params);
  const vals = Object.values(params);
  return new Function(...names, `return \`${template}\`;`)(...vals);
}

const primitives = {
  String: "String",
  Int: "int",
  Float: "double",
  Boolean: "bool",
  ID: "String",

  int: "int",
  bool: "bool",
  double: "double",
  num: "num",
  dynamic: "dynamic",

  Object: "Object",
  DateTime: "DateTime"
};

function jsonConverter(type, template = "@${type}Converter()") {
  return interpolateTemplate(template, { type }) + "\n";
}

function jsonKey({ type, addSerializers = false }) {
  if (!addSerializers) {
    return "";
  }
  return jsonConverter(type);
}

function wrap(isArray, fieldType) {
  return isArray ? `List<${fieldType}>` : fieldType;
}

function asIrreducible(rawTypeText, irreducibles = []) {
  if (irreducibles.includes(rawTypeText.replace(/\[|\]|!/g, ""))) {
    return rawTypeText.replace(/\[|\]|!/g, "");
  }
}

export default function resolveType(
  type,
  jsonKeyInfo,
  contextName,
  contextModels = [],
  scalars = {},
  replace = {},
  isArray,
  irreducibles = [],
  rawTypeText,
  className,
  requiredFields
) {
  let isRequired = false;
  let addSerializers = true;
  if (jsonKeyInfo == "inline") {
    isRequired = false;
    addSerializers = false;
  } else {
    // default to true if not set
    if (requiredFields !== false) {
      isRequired = jsonKeyInfo;
    } else {
      isRequired = false;
    }
  }
  let fieldType =
    asIrreducible(rawTypeText, irreducibles) ||
    (contextModels.filter(({ modelType }) => modelType === type).length
      ? contextName + type
      : primitives[type] || type || "Object");

  if (replace[fieldType]) {
    fieldType = replace[fieldType];
  }
  if (scalars[fieldType]) {
    fieldType = scalars[fieldType];
    if (!(fieldType in primitives)) {
      return new SafeString(
        jsonKey({
          type: fieldType,
          className: className,
          required: isRequired,
          addSerializers
        }) + wrap(isArray, fieldType)
      );
    } else {
      fieldType = primitives[fieldType];
    }
  }
  return new SafeString(
    jsonKey({ type: fieldType, required: isRequired, className: className }) +
      wrap(isArray, fieldType)
  );
}
