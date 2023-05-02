import 'package:flutter/material.dart';

import '../../../core/common_widgets/widgets.dart';
import '../../../core/constants/const.dart';
import '../../feature_widgets.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
              ),
              child: Text(AppString.selLocationWelcome,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.labelSmall),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
              ),
              child: Button(
                onPress: () => locateMe(context),
                icon: AppSvg.locateSvg,
                text: AppString.locateMeButton,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
              ),
              child: Button(
                onPress: () => provideDeliveryLocation(context),
                icon: AppSvg.provideSvg,
                text: AppString.provideDeliveryLocationButton,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

locateMe(BuildContext context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const AuthScreen()));
}

provideDeliveryLocation(BuildContext context) {}
