import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class NotificationBar extends StatefulWidget {
  const NotificationBar({super.key});

  @override
  State<NotificationBar> createState() => _NotificationBarState();
}

class _NotificationBarState extends State<NotificationBar> {
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
              "Notification",
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
              width: 215,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
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
