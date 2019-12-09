import buildPlugin from "./build-plugin";
import schemaTemplate, * as partials from "./templates/schema";

export const plugin = buildPlugin(schemaTemplate, partials);