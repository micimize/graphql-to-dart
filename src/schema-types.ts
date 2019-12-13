import buildPlugin from "./build-plugin";
import schemaTemplate, * as partials from "./templates/schema";

export const plugin = buildPlugin("schema", schemaTemplate, partials, {
  imports: ["package:meta/meta.dart"],
  parts: [],
  exports: []
});
