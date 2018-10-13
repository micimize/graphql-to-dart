const capitalize = lower => lower.replace(/^\w/, c => c.toUpperCase());

// TODO inline fragment "onType" support
export default function classExtends([ ext, ...fragments ] = [undefined]) {
  if (!ext){
    return ''
  }
  const baseClass = capitalize(ext.fragmentName);
  // we need to strip constructors for mixins
  const mixins = fragments.map(f => `_${capitalize(f.fragmentName)}Mixin`)
  return `extends ${baseClass}` + (
    mixins.length ? ' with ' + mixins.join(', ') : ''
  )
}

