import { capitalize } from "./utils";

var fragmentBaseTypes = {};

// We register fragment base types when they are defined,
// then pull them out later for adding helpers to the generated code
export default function hackFragmentBaseTypes(
  action,
  fragmentClassName,
  baseTypes = undefined
) {
  if (action === "add") {
    fragmentBaseTypes[fragmentClassName] = baseTypes;
  }

  if (action === "get") {
    return Array.isArray(fragmentClassName)
      ? fragmentClassName.map(cn => ({
          fragmentClassName: cn,
          baseTypes: fragmentBaseTypes[cn]
        }))
      : { fragmentClassName, baseTypes: fragmentBaseTypes[fragmentClassName] };
  }
}
