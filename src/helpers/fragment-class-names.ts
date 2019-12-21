import { capitalize } from "./utils";

function fragmentClass(f){
    if (!f.fragmentName){
        throw Error(`${f} is not a fragment definition`)
        
    }
    return capitalize(f.fragmentName)

}
export default function fragmentClassNames(fragments = []) {
  return fragments.map(fragmentClass);
}
