const primitives = {
  String: 'String',
  Int: 'int',
  Float: 'double',
  Boolean: 'bool',
  ID: 'String',
}
export default function resolveType (type, contextName, contextModels = []) {
  return contextModels.filter(({ modelType }) => modelType === type).length
    ?  contextName + type
    : (primitives[type] || type || '')
}

