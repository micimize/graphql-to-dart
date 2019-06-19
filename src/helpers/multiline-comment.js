const linewrap = require('linewrap')
const { SafeString } = require('handlebars')
const wrap = linewrap(80, {
  wrapLineIndent: 0,
  lineBreak: '\n'
})

function flatMap(xs, f) {
    return xs.map(f).reduce((a, b) => a.concat(b), []);
}
function safeDartCommentLineWrapped(comment) {
    
    return flatMap(
          comment.split('\n'),
          (value) => wrap(value).split('\n')
        )
        .map((value)=> `/// ${value}`)
        .join('\n')
}

export default function multilineComment (comment = '') {
  return new SafeString(safeDartCommentLineWrapped(comment))
}
