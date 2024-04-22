import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'structure_core_platform_interface.dart';

/// An implementation of [StructureCorePlatform] that uses method channels.
class MethodChannelStructureCore extends StructureCorePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('structure_core');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
