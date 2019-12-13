import { capitalize } from "./utils";

var fragmentBaseTypes = {};

// We register fragment base types when they are defined,
// then pull them out later for adding helpers to the generated code
export default function hackFragmentBaseTypes(
  action: "add" | "get",
  fragmentClassName: string,
  baseTypes: any = undefined
) {
  switch (action) {
    case "add":
      fragmentBaseTypes[fragmentClassName] = baseTypes;
      return null;
    case "get":
      return Array.isArray(fragmentClassName)
        ? fragmentClassName.map(cn => ({
            fragmentClassName: cn,
            baseTypes: fragmentBaseTypes[cn]
          }))
        : {
            fragmentClassName,
            baseTypes: fragmentBaseTypes[fragmentClassName]
          };
  }
}
