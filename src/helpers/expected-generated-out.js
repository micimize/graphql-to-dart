export default function expectedGeneratedOut(outFile){
  return outFile.split('.').slice(0, -1).join('.') + '.g.dart'
}
