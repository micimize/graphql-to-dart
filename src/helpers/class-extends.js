const capitalize = lower => lower.replace(/^\w/, c => c.toUpperCase());

// TODO inline fragment "onType" support
export default function classExtends([ ext, ...fragments ] = [undefined]) {
  if (!ext){
    return ''
  }
  const baseClass = capitalize(ext.fragmentName);
  const mixins = fragments.map(f => `_${capitalize(f.fragmentName)}Fields`)
  return `extends _${baseClass}Fields` + (
    mixins.length ? ' with ' + mixins.join(', ') : ''
  )
}

