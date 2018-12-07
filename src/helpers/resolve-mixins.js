export default function resolveMixins(
  mixins = [],
  fields = []
) {
  let fieldNames = fields.map(f => f.name);
  return mixins.filter(({ when = { fields: [] } }) => {
    for (let requiredField of when.fields){
      if (!fieldNames.includes(requiredField)){
        return false
      }
    }
    return true
  }).map(mixin => mixin.name)
}

