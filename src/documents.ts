import buildPlugin, {
  defaultDirectives,
  DartConfig as PluginConfig
} from "./build-plugin";
import documentsTemplate, * as partials from "./templates/documents";

export { PluginConfig };

export const plugin = buildPlugin(
  "documents",
  documentsTemplate,
  partials,
  defaultDirectives
);
