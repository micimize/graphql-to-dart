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

export default function withInputType(
  baseType,
  replaceMap,
  className,
  exclusionConfig
) {
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
    return [baseType];
  }

  return [baseType, inputType];
}
