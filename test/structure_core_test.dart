import 'package:flutter_test/flutter_test.dart';
import 'package:structure_core/structure_core.dart';
import 'package:structure_core/structure_core_platform_interface.dart';
import 'package:structure_core/structure_core_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStructureCorePlatform
    with MockPlatformInterfaceMixin
    implements StructureCorePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StructureCorePlatform initialPlatform = StructureCorePlatform.instance;

  test('$MethodChannelStructureCore is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStructureCore>());
  });

  test('getPlatformVersion', () async {
    StructureCore structureCorePlugin = StructureCore();
    MockStructureCorePlatform fakePlatform = MockStructureCorePlatform();
    StructureCorePlatform.instance = fakePlatform;

    expect(await structureCorePlugin.getPlatformVersion(), '42');
  });
}
