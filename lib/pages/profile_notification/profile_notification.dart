import 'package:flutter/material.dart';
import 'package:travel_app/pages/profile_notification/components/caption.dart';
import 'package:travel_app/pages/profile_notification/components/later_button.dart';
import 'package:travel_app/pages/profile_notification/components/security_button.dart';

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
                const Caption(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const LaterButton(),
            const SizedBox(
              height: 10,
            ),
            const SecurityButton(),
          ],
        ),
      ),
    );
  }
}
