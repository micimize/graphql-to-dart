let generics = T => `${T}, ${T}.O`

export default function classExtends([ ext, ...mixins ] = [undefined]) {
  if (!ext){
    return ''
  }
  return `extends ${ext}` + (mixins.length ? ' with ' + mixins.join(', ') : '')
}

