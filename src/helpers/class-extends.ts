import { toPascalCase } from "@graphql-codegen/plugin-helpers";
import fragmentClassNames from "./fragment-class-names";

function dedupe(arr: string[]) {
  return arr.filter((item, index) => arr.indexOf(item) === index);
}
// flilter configured mixins based on "when" fields
export function resolveMixins(mixins = [], fields = []) {
  let fieldNames = fields.map(f => f.name);
  return dedupe(
    mixins
      .filter(({ when = { fields: [] } }) => {
        for (let requiredField of when.fields) {
          if (!fieldNames.includes(requiredField)) {
            return false;
          }
        }
        return true;
      })
      .map(mixin => mixin.name)
  );
}

const builtinInterfaces = [
  /*"ToJson"*/
];

// apply whatever inheritence keyword
function inherit(inheritanceKeyword, ..._parents) {
  const parents = _parents.filter(p => p);
  if (parents.length == 0) {
    return "";
  }
  return `${inheritanceKeyword} ${parents.map(toPascalCase).join(", ")} `;
}

// returns

// we extend from interfaces in dart to allow functionality
// piggybacking via replaceTypes
// TODO base type / entity modeling
//   should be done via postgraphile plugin
//   right now we replace Node with Entity, which is hacky
//   ex. Query becomes an "Entity"

export default function configureClassExtends({ mixins }) {
  function classExtends({
    hash: { baseType, mixins = [], fragments = [], interfaces = [] }
  }) {
    return (
      inherit("extends", baseType) +
      inherit(
        "with",
        ...resolveMixins(mixins, fields),
        ...fragmentClassNames(fragments)
      ) +
      inherit("implements", ...builtinInterfaces, ...interfaces)
    );
  }
  return classExtends;
}
