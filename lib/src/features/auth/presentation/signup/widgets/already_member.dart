import 'package:flutter/material.dart';

import '../../../../../core/constants/const.dart';

class AlreadyMember extends StatelessWidget {
  const AlreadyMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppString.textAlreadySignUp,
          style: TextStyle(
            color: AppColors.alreadyMemberTextColor,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: const [
            Text(
              AppString.textMemberSignUp,
              style: TextStyle(
                color: AppColors.alreadyMemberTextColor,
              ),
            ),
            Text(
              AppString.login,
              style: TextStyle(
                color: AppColors.alreadyMemberTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
