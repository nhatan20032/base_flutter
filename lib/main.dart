import 'package:base_flutter/page/splash/splash_page.dart';
import 'package:base_flutter/routes.dart';
import 'package:base_flutter/theme.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      debugShowCheckedModeBanner: false, // tắt tag debug
      initialRoute: SplashPage.routeName,
      routes: routes,
    );
  }
}