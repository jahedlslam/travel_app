import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class SettingOther extends StatefulWidget {
  const SettingOther({super.key});

  @override
  State<SettingOther> createState() => _SettingOtherState();
}

class _SettingOtherState extends State<SettingOther> {
  bool isSwitch1 = false;
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
              "Setting other",
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
          value: isSwitch1,
          onChanged: (value) {
            setState(
              () {
                isSwitch1 = value;
              },
            );
          },
        ),
      ],
    );
  }
}
