import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lets_start/screens/setting_screen.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    // Change the status bar text color based on the current theme
    //final Brightness brightness = MediaQuery.of(context).platformBrightness;
    //bool isDarkMode = brightness == Brightness.dark;

    /*SystemChrome.setSystemUIOverlayStyle(
      isDarkMode
          ? SystemUiOverlayStyle.light.copyWith(statusBarIconBrightness: Brightness.dark)
          : SystemUiOverlayStyle.dark.copyWith(statusBarIconBrightness: Brightness.dark),
    );*/
    return Scaffold(
      appBar: AppBar(
        /*systemOverlayStyle: isDarkMode
            ? SystemUiOverlayStyle.light.copyWith(statusBarIconBrightness: Brightness.dark)
            : SystemUiOverlayStyle.dark.copyWith(statusBarIconBrightness: Brightness.dark),*/

        title: Text("Checking Text", style: Theme.of(context).textTheme.bodyMedium,),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Get.to(SettingsPage()),
          ),
        ],
      ),
    );
  }
}
