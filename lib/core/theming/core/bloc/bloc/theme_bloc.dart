import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plantilla_vgv/core/theming/theme/themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({AppThemes currentTheme = AppThemes.dark})
      : super(ThemeState(currentTheme: currentTheme)) {
    on<BlocThemeChangedEvent>(_onChange);
    on<BlocThemeInitEvent>(_onInit);
  }

  void _onChange(
    BlocThemeChangedEvent event,
    Emitter<ThemeState> emit,
  ) {
    emit(ThemeState(currentTheme: event.theme));
  }

  void _onInit(
    BlocThemeInitEvent event,
    Emitter<ThemeState> emit,
  ) {
    emit(const ThemeState(currentTheme: AppThemes.dark));
  }
}
