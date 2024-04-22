#include "include/structure_core/structure_core_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "structure_core_plugin.h"

void StructureCorePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  structure_core::StructureCorePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
