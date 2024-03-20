import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import '../../../routes/app_routes.dart';

class Password extends StatelessWidget {
  const Password({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.changingPassword);
      },
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Change your password",
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      color: Colors.grey.shade800,
                      fontSize: 12),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.secondaryGrayColor400,
            ),
          ],
        ),
      ),
    );
  }
}
