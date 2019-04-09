import { capitalize } from "./utils";

const fragmentClass = f => capitalize(f.fragmentName);

export default function fragmentClassNames(fragments = []) {
  return fragments.map(fragmentClass);
}
