import 'package:base_flutter/page/sign_in/sign_in_page.dart';
import 'package:base_flutter/page/splash/splash_page.dart';
import 'package:flutter/material.dart';

// Nơi đặt tên route
// Tất cả các routes đề được đặt ở đây
final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  SignInPage.routeName: (context) => const SignInPage(),
};