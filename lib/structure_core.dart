
import 'structure_core_platform_interface.dart';

class StructureCore {
  Future<String?> getPlatformVersion() {
    print("StructureCorePlatform");
    return StructureCorePlatform.instance.getPlatformVersion();
  }
}
