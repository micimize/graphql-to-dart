const linewrap = require('linewrap')
const { SafeString } = require('handlebars')
const wrap = linewrap(80, {
  wrapLineIndent: 0,
  lineBreak: '\n/// '
})
export default function multilineComment (comment = '') {
  return new SafeString(`/// ${wrap(comment)}`)
}
