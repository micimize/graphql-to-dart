const { SafeString } = require("handlebars");

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

function jsonKey({ type, required = false, addSerializers = false }) {
  if (!required && !addSerializers) {
    return "";
  }
  return (
    "@JsonKey(" +
    (addSerializers
      ? `fromJson: fromJsonTo${type}, toJson: from${type}ToJson,`
      : "") +
    (required ? "required: true, disallowNullValue: true," : "") +
    ")\n    "
  );
}

function wrap(isArray, fieldType) {
  return isArray ? `List<${fieldType}>` : fieldType;
}

function asIrreducible(rawTypeText, irreducibles) {
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
  rawTypeText
) {
  let isRequired = false;
  let addSerializers = true;
  if (jsonKeyInfo == "inline") {
    isRequired = false;
    addSerializers = false;
  } else {
    isRequired = jsonKeyInfo;
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
          required: isRequired,
          addSerializers
        }) + wrap(isArray, fieldType)
      );
    } else {
      fieldType = primitives[fieldType];
    }
  }
  return new SafeString(
    jsonKey({ type: fieldType, required: isRequired }) +
      wrap(isArray, fieldType)
  );
}
