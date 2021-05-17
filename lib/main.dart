import 'package:flutter/material.dart';
import 'layouts/splash_layout.dart';
import 'widgets/dark_them.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clock',
      debugShowCheckedModeBanner: false,
      darkTheme: buildDarkTheme(),
      themeMode: ThemeMode.dark,
      home: SplashLayout(),
    );
  }
}
