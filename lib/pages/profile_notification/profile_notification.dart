import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import '../../routes/app_routes.dart';

class ProfileNotification extends StatelessWidget {
  const ProfileNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      width: 375,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/icons/security.png",
                  height: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account security",
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 88,
                      width: 180,
                      child: Text(
                        "One more step for your account not to be attacked. Have you installed the authentication method?",
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          color: Colors.grey.shade800,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 46,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryGrayColor,
                ),
                child: const Center(
                  child: Text(
                    "LATER",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 46,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.securitySetting);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                ),
                child: const Center(
                  child: Text(
                    "SECURITY SETTING",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
