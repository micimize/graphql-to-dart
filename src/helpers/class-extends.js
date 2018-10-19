const capitalize = lower => lower.replace(/^\w/, c => c.toUpperCase());
const fragmentClass = f => capitalize(f.fragmentName)


const orEmpty = (cond, val) => cond  ? val : ''


// TODO inline fragment "onType" support
export default function classExtends(fragments = [], baseClass) {
  return [
    orEmpty(baseClass, `extends ${baseClass}`),
    orEmpty(
      fragments.length,
      `implements ${fragments.map(fragmentClass)}`
    ),
  ].join(' ')
}

