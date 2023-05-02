import 'package:flutter/material.dart';

import '../../../core/common_widgets/widgets.dart';
import '../../../core/constants/const.dart';

class WelcomeBlock extends StatelessWidget {
  const WelcomeBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget svg;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        svg = const Padding(
          padding: EdgeInsets.symmetric(vertical: 35),
          child: LogoSvg(
            svgIcon: AppSvg.logo,
            height: 133,
            width: 159,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(AppString.titleWelcome,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(
          height: 15,
        ),
        Text(AppString.subTitleWelcome,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(
          height: 55,
        ),
      ],
    );
  }
}
