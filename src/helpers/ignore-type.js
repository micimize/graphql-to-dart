export default function ignoreType(name, ignore = {}) {
  return Object.keys(ignore).includes(name)
}

