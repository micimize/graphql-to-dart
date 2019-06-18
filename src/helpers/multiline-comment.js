const linewrap = require('linewrap')
const { SafeString } = require('handlebars')
const wrap = linewrap(80, {
  wrapLineIndent: 0,
  lineBreak: '\n'
})

function safeDartCommentLineWrapped(comment) {
    return comment
        .split('\n')
        .flatMap((value) => wrap(value).split('\n'))
        .map((value)=> `/// ${value}`)
        .join('\n')
}

export default function multilineComment (comment = '') {
  return new SafeString(safeDartCommentLineWrapped(comment))
}
