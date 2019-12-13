import { toPascalCase } from "@graphql-codegen/plugin-helpers";
import { dedupe, arrayify, inputBaseType } from "./utils";

export interface AddInputHelpersConfig {
  /**
   * Configures if and how input type casting helpers are generated
   * @default false
   */
  addInputHelpers?:
    | boolean
    | {
        /**
         * Explicitly add the given converters for the given type classes to the class
         */
        explicitlyFor?: { [inputType: string]: string | string[] };
        /*
         * Exclude the given converters for the class. This can include Input types
         */
        exceptFor?: string[];
      };
}

export default ({ addInputHelpers = false }: AddInputHelpersConfig & object) =>
  function configureAddInputHelpers(inputType: string) {
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

    if (exceptFor.includes(baseType)) {
      return generateHelpersFor;
    }

    generateHelpersFor.push(baseType);
    return dedupe(generateHelpersFor);
  };
