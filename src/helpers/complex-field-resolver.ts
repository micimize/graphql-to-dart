import { toPascalCase } from "@graphql-codegen/plugin-helpers";

var complexFields = new Set<String>();

export function shouldGenerateField(
  typeName: string,
  field: string,
  interfaces: string[] = []
): boolean {
  const fieldName = toPascalCase(field);
  for (const i of interfaces) {
    if (complexFields.has(i + fieldName)) {
      return false;
    }
  }

  complexFields.add(typeName + fieldName);

  return true;
}

// Grab fragments and add them to inhereting classes
export function resolveFieldType(
  typeName: string,
  field: string,
  interfaces: string[] = []
) {
  const fieldName = toPascalCase(field);

  for (const i of interfaces) {
    if (complexFields.has(i + fieldName)) {
      return i + fieldName;
    }
  }
  return typeName + fieldName;
}

function assert(cond: boolean, { action, ...rest }): void {
  if (!cond) {
    const required = Object.keys(rest)[0];
    throw Error(
      `hackFragmentFields(${action}, ...) requires a ${required} argument, but received ${rest[required]}`
    );
  }
}
