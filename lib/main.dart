import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lets_start/test.dart';
import 'package:lets_start/theme/theme.dart';
import 'controllers/theme_controller.dart';

// C:\Users\Netro>flutter --version
// Flutter 3.22.1 • channel stable • https://github.com/flutter/flutter.git
// Framework • revision a14f74ff3a (5 weeks ago) • 2024-05-22 11:08:21 -0500
// Engine • revision 55eae6864b
// Tools • Dart 3.4.1 • DevTools 2.34.3
//
// C:\Users\Netro>dart --version
// Dart SDK version: 3.4.1 (stable) (Tue May 21 15:46:25 2024 +0000) on "windows_x64"
//
// C:\Users\Netro>java --version
// java 19.0.2 2023-01-17
// Java(TM) SE Runtime Environment (build 19.0.2+7-44)
// Java HotSpot(TM) 64-Bit Server VM (build 19.0.2+7-44, mixed mode, sharing)


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeService());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        themeMode: Get.find<ThemeService>().themeMode,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: Test(),
      );
    });
  }
}

