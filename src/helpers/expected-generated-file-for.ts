import { basename, extname } from "path";

export default function expectedGeneratedFileFor(outputFile) {
  return basename(outputFile, ".dart") + ".g.dart";
}
