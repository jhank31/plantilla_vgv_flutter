import 'package:flutter/material.dart';
import 'package:plantilla_vgv/core/theming/core/base_color_palette.dart';
import 'package:plantilla_vgv/core/theming/core/base_theme.dart';
import 'package:plantilla_vgv/core/theming/theme/dark_theme/color_palette_dark.dart';

class DarkTheme extends AppTheme {
  const DarkTheme();

  @override
  List<Color> get appBarGradientColors => [
        baseColorPalette.primary400,
        baseColorPalette.secondaryColor ,
  ];

  @override
  BaseColorPalette get baseColorPalette => ColorPaletteDark();

  @override
  bool get isDark => true;

  @override
  ThemeData get theme => baseTheme;

}
