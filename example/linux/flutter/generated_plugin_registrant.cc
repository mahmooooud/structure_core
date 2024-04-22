//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <structure_core/structure_core_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) structure_core_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "StructureCorePlugin");
  structure_core_plugin_register_with_registrar(structure_core_registrar);
}
