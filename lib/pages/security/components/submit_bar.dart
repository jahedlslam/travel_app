import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class SubmitBar extends StatefulWidget {
  const SubmitBar({super.key});

  @override
  State<SubmitBar> createState() => _SubmitBarState();
}

class _SubmitBarState extends State<SubmitBar> {
  bool submit = false;
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
              "Submit OTP code",
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
          value: submit,
          onChanged: (value) {
            setState(() {
              submit = value;
            });
          },
        ),
      ],
    );
  }
}
