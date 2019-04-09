import { capitalize } from "./utils";

const fragmentClass = f => capitalize(f.fragmentName);

const builtinInterfaces = ["ToJson"];

export function shouldBeIncluded(fieldName, config) {
  for (let exclude of config.excludeFields || []) {
    if (typeof exclude === "string") {
      if (exclude === fieldName) {
        return false;
      }
    } else {
      const { prefix, suffix } = exclude || {};
      if (
        (prefix && fieldName.startsWith(prefix)) ||
        (suffix && fieldName.endsWith(suffix))
      ) {
        return false;
      }
    }
  }
  return true;
}

// TODO stopgap for https://github.com/dotansimha/graphql-code-generator/issues/847
export default function fragmentFieldOnBaseType(fieldName, config) {
  if (Array.isArray(fieldName) && !fieldName.length) {
    return false;
  }
  if (!config) {
    return false;
  }
  if (config === true) {
    return true;
  }
  if (Array.isArray(fieldName)) {
    return (
      fieldName.filter(({ name }) => shouldBeIncluded(name, config)).length > 0
    );
  }
  return shouldBeIncluded(fieldName, config);
}
