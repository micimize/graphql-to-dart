export default function resolveMixins(
  mixins = [],
  fields = []
) {
  return mixins.filter(mixin => {
    for (let { name } of fields){
      if (mixin.when.fields.includes(name)){
        return true
      }
    }
  }).map(mixin => mixin.name)
}

