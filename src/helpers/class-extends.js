import { capitalize } from "./utils";
import fragmentClassNames from "./fragment-class-names";

const builtinInterfaces = [
    /*"ToJson"*/
];

// apply whatever inheritence keyword
function inherit(inheritanceKeyword, ..._parents){
    const parents = _parents.filter(p =>  p);
    if (parents.length == 0){
        return ''
    }
    return `${inheritanceKeyword} ${parents.join(', ')} `
}

// TODO inline fragment "onType" support
// we extend from interfaces in dart to allow functionality
// piggybacking via replaceTypes
// TODO base type / entity modeling
//   should be done via postgraphile plugin
//   right now we replace Node with Entity, which is hacky
//   ex. Query becomes an "Entity"
export default function classExtends(
  baseType,
  mixins = [],
  fragments = [],
  interfaces = [],
  replace = {}
) {
  if (typeof(baseType) != 'string'){
      baseType = undefined;
  }
  return (
    inherit('extends', baseType) +
    inherit('with',
        ...mixins,
        ...fragmentClassNames(fragments),
    ) +
    inherit('implements',
        ...builtinInterfaces,
        ...interfaces, 
    )
  );
}
