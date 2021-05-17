import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const dPrimaryColor = Color(0xff192734);
const dSecColor = Color(0xff22303c);

ThemeData buildDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: dPrimaryColor,
    primaryColor: dSecColor,
    textTheme: TextTheme(
      // ignore: deprecated_member_use
      body1: TextStyle(
        color: Colors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white, size: 25),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      color: dSecColor,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: dPrimaryColor,
          statusBarIconBrightness: Brightness.light),
    ),
    
  );
}
