import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import '../../../routes/app_routes.dart';

class CardManagement extends StatelessWidget {
  const CardManagement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.cardManagement);
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
                  "Credit card management",
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
                  "Manage all your credit cards.",
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      color: Colors.grey.shade800,
                      fontSize: 12),
                ),
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
