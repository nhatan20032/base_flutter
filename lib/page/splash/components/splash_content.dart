import 'package:base_flutter/constants.dart';
import 'package:base_flutter/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    this.text,
    this.images,
  });
  final String? text, images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "Base Flutter",
          style: TextStyle(
            fontSize: getProportionalScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text ?? "", textAlign: TextAlign.center,),
        const Spacer(flex: 2),
        Image.asset(
          images ?? "",
          height: getProportionalScreenHeight(265),
          width: getProportionalScreenWidth(235),
        ),
      ],
    );
  }
}
