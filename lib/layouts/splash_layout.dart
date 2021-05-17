import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'home_layout.dart';

class SplashLayout extends StatefulWidget {
  @override
  _SplashLayoutState createState() => _SplashLayoutState();
}

class _SplashLayoutState extends State<SplashLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SplashScreenView(
            navigateRoute: HomeLayout(),
            duration: 2000,
            imageSize: 130,
            imageSrc: "assets/img/clock.png",
            text: "Clock App",
            textType: TextType.TyperAnimatedText,
            textStyle: TextStyle(
              fontSize: 30.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),
            backgroundColor: Color(0xff192734),
          ),
        ),
      ),
    );
  }
}
