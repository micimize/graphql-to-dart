const capitalize = lower => lower.replace(/^\w/, c => c.toUpperCase());

var fragmentFields = {
};
// Grab fragments and add them to inhereting classes
export default function hackFragmentFields(action, nameOrFragments, fields, contextModels){
  if (action === 'add'){
    const name = nameOrFragments
    const contextName = capitalize(name)
    const context = {
      contextName,
      contextModels 
    }
    fragmentFields[name] = fields.map(
      field => Object.assign(field, context)
    )
  }
  if (action === 'get'){
    const fragments = nameOrFragments
    return [
      ...fields,
      ...fragments.reduce((fragFields, frag) =>
        fragFields.concat(fragmentFields[frag.fragmentName]), [])
    ]
  }
}

