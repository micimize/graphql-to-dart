import buildPlugin from "./build-plugin";
import documentsTemplate, * as partials from "./templates/documents";

export const plugin = buildPlugin("documents", documentsTemplate, partials, {
  imports: [
    "package:meta/meta.dart",
    "package:json_annotation/json_annotation.dart"
  ]
});
