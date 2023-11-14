import 'package:base_flutter/page/splash/components/body.dart';
import 'package:base_flutter/size_config.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static String routeName = "/splash";
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // phải gọi hàm size config ở trang hiền thị chính
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}