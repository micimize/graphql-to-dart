export function logThis() {
  console.log(this)
}

export function log(...args) {
  args.pop() // remove handlebars metadata
  console.log(...args)
}

export function stripLeadingUnderscores(lower) {
  return lower.replace('_', '', 'g')
}

export function transformCharacters(str, characterMap) {
    return Object.keys(characterMap).reduce(
        (transformed, charToReplace) =>
            transformed.replace(
                charToReplace,
                characterMap[charToReplace],
                'g'
            ),
        str
    )
}

export function capitalize(lower) {
  return lower.replace(/^\w/, c => c.toUpperCase())
}

export function camelCase(str) {
  return str
    .replace(/[^a-zA-Z0-9]+(.)/g, (m, chr) => chr.toUpperCase())
    .replace(/^\w/, c => c.toLowerCase())
}

export function concat(...args) {
  if (Array.isArray(args[0])){
      return [].concat(...args);
  }
  return args.slice(0, -1).join('')
}

export function eachBackwards(context, options) {
  var ret = ''

  for (var i = context.length - 1, j = 0; i >= j; i--) {
    ret = ret + options.fn(context[i])
  }

  return ret
}

export function takeFirst(arg, b) {
  if (arg !== null && arg !== undefined) {
    return arg
  }
  return b
}

export function stripSuffix(name, suffix) {
  return name.replace(
    new RegExp(suffix + '$'), ''
  )
}

export function inputBaseType(name) {
  return stripSuffix(name, 'Input')
}


export function wrapFields(interfaces = []) {
    return interfaces.map(i => `_${i}Fields`)
}
