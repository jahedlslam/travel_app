import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class AuthenticationBar extends StatefulWidget {
  const AuthenticationBar({super.key});

  @override
  State<AuthenticationBar> createState() => _AuthenticationBarState();
}

class _AuthenticationBarState extends State<AuthenticationBar> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fingerprint authentication",
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
              width: 220,
              child: Text(
                "No need to remember password. You only need to use your fingerprint to log in to your account.",
                style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.grey.shade800,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        CupertinoSwitch(
          activeColor: AppColors.primaryColor,
          value: isSwitch,
          onChanged: (value) {
            setState(
              () {
                isSwitch = value;
              },
            );
          },
        ),
      ],
    );
  }
}
