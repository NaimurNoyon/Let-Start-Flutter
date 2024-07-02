import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService extends GetxService {
  final _themeMode = ThemeMode.system.obs;

  ThemeMode get themeMode => _themeMode.value;

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromPreferences();
  }

  void _loadThemeFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString('theme') ?? 'system';
    switch (theme) {
      case 'dark':
        _themeMode.value = ThemeMode.dark;
        break;
      case 'light':
        _themeMode.value = ThemeMode.light;
        break;
      default:
        _themeMode.value = ThemeMode.system;
    }
  }

  void saveThemeToPreferences(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    _themeMode.value = themeMode;
    prefs.setString('theme', themeMode.toString().split('.').last);
  }

  void changeTheme(ThemeMode themeMode) {
    _themeMode.value = themeMode;
    saveThemeToPreferences(themeMode);
  }
}
