import '../resources/color.dart';

import '../resources/drawable.dart';
import '../resources/fonts.dart';

class R {
  static void refreshClass() {
    _drawable = null;
    _color = null;
    _fonts = null;
  }

  static Drawable? _drawable;
  static Drawable get drawable => _drawable ??= Drawable();

  static AppColor? _color;
  static AppColor get color => _color ??= AppColor();

  static Fonts? _fonts;
  static Fonts get fonts => _fonts ??= Fonts();
}
