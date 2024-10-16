import 'package:flutter/material.dart';
import 'package:fontai_chrome_extension/Auth/main_page.dart';
import 'package:fontai_chrome_extension/Theme/dark_mode.dart';
import 'package:fontai_chrome_extension/Theme/light_mode.dart';
import 'package:fontai_chrome_extension/Theme/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeNotifier(),
    child: Builder(builder: (context) {
      return const MyApp();
    }),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      darkTheme: darkMode,
      theme: lightMode,
      themeMode: themeNotifier.currentTheme == lightMode
          ? ThemeMode.light
          : ThemeMode.dark,
    );
  }
}
