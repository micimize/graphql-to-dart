import { capitalize } from "./utils";

var fragmentFields = {};

function getFields(name) {
  let { nestedFragments, fields, ...context } = fragmentFields[name];
  fields = fields.map(field => Object.assign(field, context));
  nestedFragments.forEach(nested => {
    fields = fields.concat(getFields(nested));
  });
  return fields;
}
// Grab fragments and add them to inhereting classes
export default function hackFragmentFields(
  action,
  nameOrFragments,
  fields = [],
  contextModels = [],
  nestedFragments = []
) {
  if (action === "ensure_unique") {
    const name = nameOrFragments;
    return !(name in fragmentFields);
  }

  if (action === "add") {
    const name = nameOrFragments;
    fragmentFields[name] = {
      contextName: capitalize(name),
      contextModels,
      nestedFragments: nestedFragments.map(f => f.fragmentName),
      fields
    };
  }

  if (action === "get") {
    const fragments = nameOrFragments;
    return [
      ...fields,
      ...fragments.reduce(
        (fragFields, frag) => fragFields.concat(getFields(frag.fragmentName)),
        []
      )
    ];
  }

  if (action === "list") {
    const fragments = nameOrFragments;
    return fragments.map(frag => getFields(frag.fragmentName));
  }
}
