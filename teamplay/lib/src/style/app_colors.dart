import 'dart:ui';

import 'package:teamplay/src/provider/theme_provider.dart';

class AppColors {
  ThemeTypes _themeType;
  AppColors(this._themeType);

  ThemeColors getCurrent() {
    if (_themeType == ThemeTypes.Dark)
      return const _Dark();
    else
      return const _Light();
  }

  static const ThemeColors Dark = const _Dark();
  static const ThemeColors Light = const _Light();
}

class _Light extends ThemeColors {
  const _Light()
      : super(const Color(0xff3A0CA3), const Color(0xffff51a1),
            const Color(0xffF2F2F2), const Color(0xffF2F2F2));
}

class _Dark extends ThemeColors {
  const _Dark()
      : super(const Color(0xff05ce7a), const Color(0xffff51a1),
            const Color(0xff37323E), const Color(0xff2F2839));
}

abstract class ThemeColors {
  const ThemeColors(
      this.primary, this.primary2, this.background, this.mainBackground);

  final Color primary;
  final Color primary2;

  final Color mainBackground;
  final Color background;

  final Color white = const Color(0xffffffff);
  final Color lightGray = const Color(0xff919191);
}
