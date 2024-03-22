import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class ReliableBar extends StatefulWidget {
  const ReliableBar({super.key});

  @override
  State<ReliableBar> createState() => _ReliableBarState();
}

class _ReliableBarState extends State<ReliableBar> {
  bool light = false;
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
              "Reliable device",
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
          value: light,
          onChanged: (value) {
            setState(
              () {
                light = value;
              },
            );
          },
        ),
      ],
    );
  }
}
