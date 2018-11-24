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
  [base, ...mixins] = [],
  fragments = [],
  interfaces = [],
  replace = {}
) {
  return (base ? `extends ${base} ` : '') + (
    mixins.length ? `with ${mixins.join(', ')} ` : ''
  ) + `implements ${
        builtinInterfaces
          .concat(interfaces)
          .concat(fragments.map(fragmentClass))
        .join(', ')
  }`
}

