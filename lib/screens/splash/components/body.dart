import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();

}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        //splash: Image.asset("assets/images/logo_soycucei.png"),
        splash: Image.asset("assets/images/soycucei_logoTienda.png"),
        nextScreen: SignInScreen(),
        duration: 150,
        splashIconSize: 3000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
    );
  }
}

