import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import '../../../routes/app_routes.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.menu);
      },
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.primaryWhiteColor,
          boxShadow: [
            AppColors.praimaryMenuIconBoxShadow,
          ],
        ),
        child: Icon(
          Icons.sort_rounded,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
