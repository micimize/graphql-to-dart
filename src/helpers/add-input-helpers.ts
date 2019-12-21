import { toPascalCase } from "@graphql-codegen/plugin-helpers";
import { dedupe, arrayify, inputBaseType } from "./utils";
import { GraphQLSchema, visit, parse, printSchema } from "graphql";

export interface AddInputHelpersConfig {
  /**
   * Configures if and how input type casting helpers are generated
   * NOTE: This only works for ObjectTypes
   * @default false
   */
  addInputHelpers?:
    | boolean
    | {
        /**
         * Explicitly add the given converters for the given object type classes to the class
         */
        explicitlyFor?: { [inputType: string]: string | string[] };
        /*
         * Exclude the given converters for the class. This can include Input types
         */
        exceptFor?: string[];
      };
}

export default (
  schema: GraphQLSchema,
  { addInputHelpers = false }: AddInputHelpersConfig & object
) => {
  let objectTypes = new Set<String>();

  visit(parse(printSchema(schema)), {
    leave: {
      ObjectTypeDefinition(node) {
        objectTypes.add(node.name.value);
      }
    }
  });
  return (inputType: string) => {
    if (!addInputHelpers) {
      return [];
    }

    const { explicitlyFor = {}, exceptFor = [] } =
      addInputHelpers === true ? {} : addInputHelpers;

    if (exceptFor.includes(inputType)) {
      return [];
    }

    const baseType = inputBaseType(inputType);
    let generateHelpersFor = arrayify(explicitlyFor[inputType] || []).map(
      toPascalCase
    );

    if (
      exceptFor.includes(baseType) ||
      baseType === inputType ||
      !objectTypes.has(baseType)
    ) {
      return generateHelpersFor;
    }

    generateHelpersFor.push(baseType);

    return dedupe(generateHelpersFor);
  };
};
