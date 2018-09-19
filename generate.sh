DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../graphql-to-dart"
gql-gen --config $DIR/config.ts $@
