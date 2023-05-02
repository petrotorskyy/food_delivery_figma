import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common_widgets/widgets.dart';
import '../../../core/routing/app_route_constants.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 192,
            right: 62,
          ),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).pushNamed(AppRouteConstants.homeRouteName);
            },
            child: const TextSkip(),
          ),
        ),
      ],
    );
  }
}
