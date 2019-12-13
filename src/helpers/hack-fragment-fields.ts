import { capitalize } from "./utils";

var fragmentFields = {};

function getFields(name) {
  const frag = fragmentFields[name];
  if (!frag) {
    console.error(`
        Attempted to get fields from fragment ${name} before they were observed!

        Because graphql-to-dart is a massive hack,
        and we want to add the fields from fragments into the constructor,
        you need to glob your input files such that fragments are processed before operations.
        For example, name your fragments with an underscore like "_some_fragments.gql",
        and glob them like so:
          documents:
            - 'lib/**/_*.gql'
            - 'lib/**/!(_)*.gql'
        
        Proceeding, though the generator will likely fail
        `);
  }
  let { nestedFragments, fields, ...context } = frag;
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

    return fragments.reduce(
      (fragFields, frag) => fragFields.concat(getFields(frag.fragmentName)),
      []
    );
  }

  if (action === "list") {
    const fragments = nameOrFragments;
    return fragments.map(frag => getFields(frag.fragmentName));
  }
}
