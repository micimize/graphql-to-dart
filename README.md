# graphql-to-dart
[Custom templates](https://github.com/dotansimha/graphql-code-generator/blob/master/packages/graphql-codegen-generators/CUSTOM_TEMPLATES.md) for [graphql-code-generator](https://github.com/dotansimha/graphql-code-generator) for generating dart PODOs and json_serializable classes

### Beta
`npm install graphql-to-dart@1.1.5-beta` includes a number of updates, such as:
* per-operation file generation (probably non-optional)
*  [`gql_code_gen`](https://github.com/gql-dart/gql/tree/master/gql_code_gen) support via `integrateGqlCodeGenAst`
* `transformCharacters` support for handling `_underscore_prefixed` fields
   defaults to `{ "^_+": "" }`, resulting in `"__typename" -> "typename"`
* Models graphql-style "inheritance" by defining a protected `_$[Type}Fields` type along with every object type,
  which is then exposed by fragment mixins and selection sets.
* Fragments are modeled generated as mixins, as well as standalone `FragmentNameSelectionSet` classes

## usage
```bash
yarn add -D graphql-code-generator graphql graphql-to-dart@1.1.2-beta
```
write `codegen.yaml` to customize your build as needed.
This is the full working config I'm using in the wild:
```yaml
schema: schema/__generated__/schema.json
documents:
  # fragments are _private and collected first
  # so we can hack their fields
  - '../app/lib/**/_*.graphql'
  - '../app/lib/**/!(_)*.graphql'
overwrite: true
generates:
  ../app/lib/graphql/schema.dart:
    - graphql-to-dart/schema-types
  ../app/lib/:
    # generate operation types next to their source files
    # NOTE there's actually a coupling between the preset and plugin
    # with respect to `integrateGqlCodeGenAst` atm
    preset: graphql-to-dart
    presetConfig:
      # all required
      extension: .graphql.dart
      packageName: savvy_app
      schemaTypesPath: ../app/lib/graphql/schema.dart
    plugins:
      - graphql-to-dart/documents
config:
  # re-export built gql_code_gen ast files
  integrateGqlCodeGenAst: true
  schema:
    imports:
      # import 'package:foo/bar.dart' show biz; works as well here
      - package:savvy_app/graphql/scalars/scalars.dart
      - package:savvy_app/graphql/base.dart
    exports:
      - package:savvy_app/graphql/scalars/scalars.dart
      - package:savvy_app/graphql/base.dart
  mixins:
    # add `with Entity` when a generated class has these fields
    - when:
        fields:
        - entityId
        - validFrom
        - validUntil
      name: Entity
  scalars:
    Date: DateTime
    # requires a PGDateTimeProvider in the schema lib
    Datetime: PGDateTime
    FiniteDatetime: DateTime
    UUID: String
    Rrule: RecurrenceRule
    Cursor: String
    JSON: Object
  replaceTypes:
    TemporalIdInput: TemporalId
    # Replace with a reference, if I remember correctly
    TemporalId: TemporalId
    GoogleSignInInput: GoogleSignIn
  irreducibleTypes:
   # I have a common in-fragment type
   # that is always inherited the same way,
   # so I just repace it's inputs and make my own irreducible.
   - TemporalId

```
Then generate with `yarn gql-gen` (or `gql-gen` if you have it globally installed),
And theeeen generate the actual json serializers (`json_serializable` is a peer dependency, but on the flutter side, also `gql_code_gen` if you're using the ast integration).
So:
```bash
yarn gql-gen
flutter packages pub run build_runner build
flutter format lib/**/*graphql.dart # you're gunna want this
# or npm install globstar && globstar -- flutter format "lib/**/*.graphql.dart"
```

*Make sure you have a `build.yaml` like in the `example`, and the deps in the `pubspec.yaml`*:
```yaml
# ...
dev_dependencies:
  build_runner: ^0.9.0
  json_serializable: ^0.5.4
  # ...

dependencies:
  json_annotation: ^0.2.3
  # ...
# ...
```

...Obviously this is not the most user friendly process yet.


Take a look at the example output to see how it generates code, as well as `src/build-plugin.ts` for the configuration object, which has some docs just aching to be properly generated.
* all types have [`isValid`, `validate`, `addAll(ThisType other)`, and `copy` helpers](https://github.com/micimize/graphql-to-dart/blob/6aaba6db32c4094df535663f58c7112d17f40c32/example/lib/graphql/schema.dart#L62-L100) 
* selection set and fragments have [`from(BaseObjectType other)` and `empty` constructors](
https://github.com/micimize/graphql-to-dart/blob/6aaba6db32c4094df535663f58c7112d17f40c32/example/lib/graphql/hero_for_episode.gql.dart#L66-L75)

# NOTES
* Base types do not currently have json helpers, but it should probably be configurable
  in case of the configuration `replaceTypes: { "BaseTypeInput": "BaseType" }`
* I probably won't touch this for a while once again.
* Really what we want is for @klavs's `gql_code_gen` to become more mature,
  but I keep sinking energy into this because I can go fast here
* `#import "./fragment.graphql` bolton support has been merged into `gql_code_gen`
* (possibly outdated): You can have multiple inline fragments on the same document,
  but they will be named with leading underscores, like `Query_TypeInlineFragment`, which is ugly


