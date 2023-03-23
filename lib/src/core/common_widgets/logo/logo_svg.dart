import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoSvg extends StatelessWidget {
  const LogoSvg({
    super.key,
    required this.height,
    required this.width,
    required this.svgIcon,
  });
  final double height;
  final double width;
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgIcon,
      height: height, //133,
      width: width, //159,
    );
  }
}
