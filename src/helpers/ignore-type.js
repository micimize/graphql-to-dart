export default function ignoreType(
  name,
  ignore = {},
  baseType,
  irreducibles
) {
  return Object.keys(ignore).includes(name) || (
    baseType && irreducibles.includes(baseType)
  )
}

