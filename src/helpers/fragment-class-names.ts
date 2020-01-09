import { capitalize } from "./utils";

function fragmentClass(f) {
  if (!f.fragmentName && typeof f !== "string") {
    throw Error(`${f} is not a fragment definition`);
  }
  // allow for simple string hackery
  return capitalize(f.fragmentName || f);
}
export default function fragmentClassNames(fragments = []) {
  return fragments.map(fragmentClass);
}
