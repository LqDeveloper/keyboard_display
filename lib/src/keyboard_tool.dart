import 'keyboard_display_platform_interface.dart';
import 'keyboard_info.dart';

class KeyboardTool {
  KeyboardTool._();

  static Stream<KeyboardInfo> get keyboardInfo =>
      KeyboardDisplayPlatform.instance.keyboardInfo;
}
