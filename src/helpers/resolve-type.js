const { SafeString } = require('handlebars')

const primitives = {
  String: 'String',
  Int: 'int',
  Float: 'double',
  Boolean: 'bool',
  ID: 'String',
}

function serializers(type){
  return `@JsonKey(fromJson: fromJsonTo${type}, toJson: from${type}ToJson)
  `
}

function wrap(isArray, fieldType){
  return isArray ? `List<${fieldType}>` : fieldType
}

export default function resolveType (type, contextName, contextModels = [], scalars = {}, isArray) {

  let fieldType = contextModels.filter(({ modelType }) => modelType === type).length
    ?  contextName + type
    : (primitives[type] || type || 'dynamic')

  if (Object.keys(scalars).includes(fieldType)){
    fieldType = scalars[fieldType]
    return new SafeString(serializers(fieldType) + `final ${wrap(isArray, fieldType)}`)
  } else {
    return new SafeString(`final ${wrap(isArray, fieldType)}`)
  }
}

