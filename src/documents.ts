import buildPlugin, { defaultDirectives } from "./build-plugin";
import documentsTemplate, * as partials from "./templates/documents";

export const plugin = buildPlugin(
  "documents",
  documentsTemplate,
  partials,
  defaultDirectives
);
