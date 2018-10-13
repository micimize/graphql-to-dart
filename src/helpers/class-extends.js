const capitalize = lower => lower.replace(/^\w/, c => c.toUpperCase());

// TODO inline fragment "onType" support
export default function classExtends([ ext, ...fragments ] = [undefined]) {
  if (!ext){
    return ''
  }
  const baseClass = capitalize(ext.fragmentName);
  const mixins = fragments.map(f => `${capitalize(f.fragmentName)}`)
  return `extends ${baseClass}` + (
    mixins.length ? ' with ' + mixins.join(', ') : ''
  )
}

