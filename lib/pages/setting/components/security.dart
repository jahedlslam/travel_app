import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';

class Security extends StatelessWidget {
  const Security({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.securitySetting);
      },
      child: SizedBox(
        height: 100,
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
                  "Security",
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
                  "One more step for your account not to be attacked.",
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
            )
          ],
        ),
      ),
    );
  }
}
