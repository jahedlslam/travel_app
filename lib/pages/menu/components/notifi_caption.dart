import 'package:flutter/material.dart';

class NotificationCaptions extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String time;
  const NotificationCaptions({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 110,
          width: 375,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 20, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 54,
                  width: 54,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 90,
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            color: Colors.grey.shade800,
                            fontSize: 14),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            color: Colors.grey.shade400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
