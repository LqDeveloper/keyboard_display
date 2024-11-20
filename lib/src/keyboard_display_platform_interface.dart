import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'keyboard_display_method_channel.dart';
import 'keyboard_info.dart';

abstract class KeyboardDisplayPlatform extends PlatformInterface {
  /// Constructs a KeyboardDisplayPlatform.
  KeyboardDisplayPlatform() : super(token: _token);

  static final Object _token = Object();

  static KeyboardDisplayPlatform _instance = MethodChannelKeyboardDisplay();

  /// The default instance of [KeyboardDisplayPlatform] to use.
  ///
  /// Defaults to [MethodChannelKeyboardDisplay].
  static KeyboardDisplayPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [KeyboardDisplayPlatform] when
  /// they register themselves.
  static set instance(KeyboardDisplayPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Stream<KeyboardInfo> get keyboardInfo {
    throw UnimplementedError("子类需要实现这个");
  }
}
