import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/theme_controller.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('System Theme'),
            onTap: () {
              Get.find<ThemeService>().changeTheme(ThemeMode.system);
              Get.back();
            },
          ),
          ListTile(
            title: Text('Light Theme'),
            onTap: () {
              Get.find<ThemeService>().changeTheme(ThemeMode.light);
              Get.back();
            },
          ),
          ListTile(
            title: Text('Dark Theme'),
            onTap: () {
              Get.find<ThemeService>().changeTheme(ThemeMode.dark);
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
