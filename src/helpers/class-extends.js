const capitalize = lower => lower.replace(/^\w/, c => c.toUpperCase());
const fragmentClass = f => capitalize(f.fragmentName)


const builtinInterfaces = ['ToJson']


// TODO inline fragment "onType" support
export default function classExtends(fragments = [], baseClass) {
  return (baseClass ? `extends ${baseClass} ` : '') + `implements ${
    builtinInterfaces.concat(
      fragments.map(fragmentClass)
    ).join(', ')
  }`
}

