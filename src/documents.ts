import buildPlugin from "./build-plugin";
import documentsTemplate, * as partials from "./templates/documents";

export const plugin = buildPlugin(documentsTemplate, partials);