const capitalize = lower => lower.replace(/^\w/, c => c.toUpperCase());
const fragmentClass = f => capitalize(f.fragmentName)


// TODO inline fragment "onType" support
export default function classExtends(fragments = []) {
  return fragments.length ? `implements ${fragments.map(fragmentClass)}` : '' 
}

