import { basename, extname } from "path";

export default function expectedGeneratedFileFor(operations) {
  let fileName = operations[0].originalFile;
  const base = basename(fileName, extname(fileName));
  return `${base}.g.dart`;
}
