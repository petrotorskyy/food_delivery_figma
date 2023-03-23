import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';

class LogoSvg extends StatelessWidget {
  const LogoSvg({
    super.key,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      //AppSvg.logo,
      AppSvg.logoSvg,
      height: height, //133,
      width: width, //159,
    );
  }
}
