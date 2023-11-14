import 'package:base_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key,
    required this.svgIcon,
  });

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionalScreenWidth(20),
        getProportionalScreenWidth(20),
        getProportionalScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionalScreenWidth(18),
      ),
    );
  }
}
