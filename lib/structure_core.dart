
import 'structure_core_platform_interface.dart';

class StructureCore {
  Future<String?> getPlatformVersion() {
    return StructureCorePlatform.instance.getPlatformVersion();
  }
}
