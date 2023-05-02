import 'package:flutter/material.dart';

import '../../../core/common_widgets/widgets.dart';
import '../../../core/constants/const.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({
    super.key,
    required this.height,
  });
  final double? height;
  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF2F2F2),
      // toolbarHeight: MediaQuery.of(context).size.height * 0.18,
      toolbarHeight: height,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
      ),
      title: const LogoSvg(
        height: 180,
        width: 100,
        svgIcon: AppSvg.logoSvg,
      ),
      centerTitle: true,
      bottom: TabBar(
        tabs: [
          Tab(
            child: Text(
              AppString.login,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              AppString.signUp,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.black),
            ),
          ),
        ],
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 3,
            color: AppColors.colorIndicatorSignIn,
          ),
          insets: EdgeInsets.symmetric(horizontal: 80.0),
        ),
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }
}
