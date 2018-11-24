import { capitalize } from './utils'

const fragmentClass = f => capitalize(f.fragmentName)

const builtinInterfaces = ['ToJson']

// TODO inline fragment "onType" support
// we extend from interfaces in dart to allow functionality 
// piggybacking via replaceTypes
// TODO base type / entity modeling
//   should be done via postgraphile plugin
//   right now we replace Node with Entity, which is hacky
//   ex. Query becomes an "Entity"
export default function classExtends(
  fragments = [], interfaces = [], replace = {}
) {
  return (
    interfaces.length ? `extends ${
      interfaces.map(i => replace[i] || i).join(', ')
    } ` : ''
  ) + `implements ${
        builtinInterfaces.concat(
          fragments.map(fragmentClass)
        ).join(', ')
  }`
}

