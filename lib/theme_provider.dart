import 'package:change_theme_riverpod/theme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

// New Notifier Provider
@riverpod
class GantiTema extends _$GantiTema {
  @override
  ThemeData build() => lightTheme;

  void setDark() => state = darkTheme;
  void setLight() => state = lightTheme;
}

// class ChangeThemeNotifier extends ChangeNotifier {
//   // ChangeThemeNotifier() : super(null);
//   ThemeData _themeData = ThemeData.light();
//   String _themeName = 'Pilih tema';

//   ThemeData get themeData => _themeData;
//   String get themeName => _themeName;

//   void setDarkTheme() {
//     _themeData = darkTheme;
//     _themeName = 'Dark';
//     notifyListeners();
//   }

//   void setlightTheme() {
//     _themeData = lightTheme;
//     _themeName = 'Light';
//     notifyListeners();
//   }

//   void material3() {
//     _themeData = ThemeData.light();
//     _themeName = 'Material 3';
//     notifyListeners();
//   }
// }

// final themeProvider = ChangeNotifierProvider((ref) => ChangeThemeNotifier());


