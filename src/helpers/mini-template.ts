/* mini template parser helpers */

const INTEROPLATE_TEMPLATE_PATTERN = /{{\s*([^}]*)\s*}}/g;

const SINGLE_QUOTE = "'";
const DOUBLE_QUOTE = '"';

function normalize(value: string) {
  if (value.startsWith(SINGLE_QUOTE) && value.endsWith(SINGLE_QUOTE)) {
    const raw = value.slice(1, value.length - 1);
    return DOUBLE_QUOTE + raw.replace(/\\*"/g, '\\"') + DOUBLE_QUOTE;
  }
  return value;
}

function parseVar(expression: string, params: { [vars: string]: any }) {
  let value = params[expression];
  if (value !== undefined) {
    return value;
  }
  try {
    return JSON.parse(normalize(expression));
  } catch (e) {
    // invalid literal expression with no param
    return undefined;
  }
}

function parseExpression(expression: string, resolve: (param: string) => any) {
  let [condition, blocks] = expression.split(/\s*\?\s*/, 2);
  if (!blocks) {
    return resolve(expression);
  }

  let [ifBlock, elseBlock] = blocks.split(/\s*\:\s*/, 2);
  elseBlock = elseBlock.trim(); // other whitespace trimmed by regex

  return resolve(condition) ? resolve(ifBlock) : resolve(elseBlock);
}
/**
 * interpolate a simple template string with the given params
 *
 * ```js
 * interpolate(
 *   "{{foo}}, {{bar}}, {{biz ? bar : 'bang'}}, {{123}}",
 *   { foo: "f1", bar: "b2", biz: false }
 * )
 * // => "f1, b2, bang, 123"
 * ```
 */
export function interpolate(template: string, params: { [vars: string]: any }) {
  const resolve = (expression: string) => parseVar(expression, params);
  return template.replace(
    INTEROPLATE_TEMPLATE_PATTERN,
    (matchedSubstring, expression) => parseExpression(expression, resolve)
  );
}
