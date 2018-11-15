function typeReplacer(replace){
  return type => replace[type] || type
}

var inputTypes = []

export function registerInputType(inputType){
  inputTypes.push(inputType)
}

export default function withInputType(baseType, replaceMap) {
  const replace = typeReplacer(replaceMap)

  baseType = replace(baseType)

  const inputType = replace(`${baseType}Input`)

  if (
    (!inputTypes.includes(inputType)) ||
    inputType === baseType
  ){
    return [baseType]
  }

  return [baseType, inputType]

}
