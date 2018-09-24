const { SafeString } = require('handlebars')

const primitives = {
  String: 'String',
  Int: 'int',
  Float: 'double',
  Boolean: 'bool',
  ID: 'String',

  int: 'int',
  bool: 'bool',
  double: 'double',
  num: 'num',
  dynamic: 'dynamic',

  Object: 'Object',
  DateTime: 'DateTime'
}

function serializers(type){
  return `@JsonKey(fromJson: fromJsonTo${type}, toJson: from${type}ToJson)
  `
}

function wrap(isArray, fieldType){
  return isArray ? `List<${fieldType}>` : fieldType
}

export default function resolveType (type, contextName, contextModels = [], scalars = {}, isArray, json=true) {
  console.log(type)

  let fieldType = contextModels.filter(({ modelType }) => modelType === type).length
    ?  contextName + type
    : (primitives[type] || type || 'Object')

  if (Object.keys(scalars).includes(fieldType)){
    fieldType = scalars[fieldType]
    if (!(fieldType in primitives)) {
      return new SafeString((json ? serializers(fieldType) : fieldType) + wrap(isArray, fieldType))
    } else {
      fieldType = primitives[fieldType]
    }
  }
  return new SafeString(wrap(isArray, fieldType))
}

