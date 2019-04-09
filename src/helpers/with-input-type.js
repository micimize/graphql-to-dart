import { shouldBeIncluded } from "./fragment-field-on-base-type";

function typeReplacer(replace) {
  return type => replace[type] || type;
}

var inputTypes = [];

export function registerInputType(inputType) {
  inputTypes.push(inputType);
}

function shouldExcludeOnType(baseType, config) {
  for (let exclude of config.excludeFields || []) {
    if (exclude.onType === baseType) {
      return true;
    }
  }
  return false;
}

// this is really more fragment helper specific
export default function withInputType(
  baseType,
  replaceMap,
  className,
  exclusionConfig,
  fields
) {
  // we're hackily pulling fragment names from defineClass
  // oh my god we're getting the fields from hackFragmentFields
  // and leveraging the fact that they're in the same order to
  // stitch the base type fields together
  // TODO this is so bad
  if (Array.isArray(baseType)) {
    return baseType
      .map((fragBaseType, i) => ({ fragBaseType, typeFields: fields[i] }))
      .reduce((allTypes, { fragBaseType, typeFields }) => {
        let seen = [];
        for (let assignableTo of withInputType(
          fragBaseType,
          replaceMap,
          className,
          exclusionConfig,
          typeFields
        )) {
          if (!seen.includes(assignableTo.className)) {
            seen.push(assignableTo.className);
            allTypes.push(assignableTo);
          }
        }
        return allTypes;
      }, []);
  }
  if (
    exclusionConfig &&
    (!shouldBeIncluded(className, exclusionConfig) ||
      shouldExcludeOnType(baseType, exclusionConfig))
  ) {
    return [];
  }

  const replace = typeReplacer(replaceMap || {});

  baseType = replace(baseType);

  const inputType = replace(`${baseType}Input`);

  if (!inputTypes.includes(inputType) || inputType === baseType) {
    return [{ className: baseType, fields }];
  }

  return [baseType, inputType].map(className => ({ className, fields }));
}
