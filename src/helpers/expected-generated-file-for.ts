import { basename, extname } from "path";

import { interpolate } from "./mini-template";

export default ({ generatedFileTemplate = "{{sourceFileBaseName}}.g.dart" }) =>
  function expectedGeneratedFileFor(operations) {
    let fileName = operations[0].originalFile;
    return interpolate(generatedFileTemplate, {
      sourceFileBaseName: basename(fileName, extname(fileName))
    });
  };
