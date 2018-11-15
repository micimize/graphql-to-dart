import { capitalize } from './utils'

const fragmentClass = f => capitalize(f.fragmentName)

const builtinInterfaces = ['ToJson']

// TODO stopgap for https://github.com/dotansimha/graphql-code-generator/issues/847
export default function fragmentFieldOnBaseType(fieldName, config) {
  if (!config){
    return false
  }
  if (config === true) {
    return true
  } else {
    for (let exclude of config.excludeFields || []){
      if (typeof exclude === 'string'){
        if (exclude === fieldName){
          return false
        }
      } else {
        const { prefix, suffix } = exclude || {}
        if (
          (prefix && fieldName.startsWith(prefix)) ||
          (suffix && fieldName.endsWith(suffix))
        ) {
          console.log(fieldName)
          return false
        }
      }
    }
  }
  return true
}

