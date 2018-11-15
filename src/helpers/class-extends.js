import { capitalize } from './utils'

const fragmentClass = f => capitalize(f.fragmentName)

const builtinInterfaces = ['ToJson']

// TODO inline fragment "onType" support
// this function is hella overloaded
export default function classExtends(fragments = [], baseClass) {
  return (baseClass ? `extends ${baseClass} ` : '') + `implements ${
    builtinInterfaces
      .concat(
        fragments.map(fragmentClass)
      ).join(', ')
  }`
}

