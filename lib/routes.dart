//import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/cart/components/Tarjetas.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/components/categoriaBotellas.dart';
import 'package:shop_app/screens/home/components/categoriaCamisas.dart';
import 'package:shop_app/screens/home/components/categoriaDeportes.dart';
import 'package:shop_app/screens/home/components/categoriaMorral.dart';
import 'package:shop_app/screens/home/components/mainBusqueda.dart';
import 'package:shop_app/screens/home/components/notificaciones.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  Camisas.routeName: (context)=> Camisas(),
  Botellas.routeName:(context)=> Botellas(),
  Deportes.routeName: (context)=>Deportes(),
  Morral.routeName: (context)=>Morral(),
  mainBusqueda.routeName:(context)=>mainBusqueda(),
  Tarjetas.routeName:(context)=> Tarjetas(),
  notificaciones.routeName:(context)=> notificaciones(),
};
