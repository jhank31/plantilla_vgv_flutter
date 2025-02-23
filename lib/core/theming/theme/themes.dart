import 'package:plantilla_vgv/core/theming/core/base_theme.dart';
import 'package:plantilla_vgv/core/theming/theme/export_themes.dart';

enum AppThemes {
  dark(DarkTheme()),
  light(LightTheme());

  // aqui creamos un constructor que recibe un AppTheme
  const AppThemes(this.appTheme);
  // y creamos una propiedad final de tipo AppTheme
  final AppTheme appTheme;
}
