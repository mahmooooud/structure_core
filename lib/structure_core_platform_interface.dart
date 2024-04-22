import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'structure_core_method_channel.dart';

abstract class StructureCorePlatform extends PlatformInterface {
  /// Constructs a StructureCorePlatform.
  StructureCorePlatform() : super(token: _token);

  static final Object _token = Object();

  static StructureCorePlatform _instance = MethodChannelStructureCore();

  /// The default instance of [StructureCorePlatform] to use.
  ///
  /// Defaults to [MethodChannelStructureCore].
  static StructureCorePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StructureCorePlatform] when
  /// they register themselves.
  static set instance(StructureCorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
