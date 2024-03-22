import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class TimelineList extends StatelessWidget {
  final String hour;
  final String min;
  final String caption;
  const TimelineList({
    Key? key,
    required this.hour,
    required this.min,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: 31,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryGrayColor800,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Column(
                    children: [
                      Text(hour,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mulish',
                          )),
                      const Text("-",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(min,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mulish',
                          )),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 243,
              height: 65,
              child: Text(
                caption,
                style: const TextStyle(
                    fontSize: 14, fontFamily: 'Mulish', color: Colors.black),
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
