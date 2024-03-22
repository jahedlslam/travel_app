import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class NameSection extends StatelessWidget {
  const NameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            "Name",
            style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Container(
            height: 40,
            width: 340,
            decoration: BoxDecoration(
              color: AppColors.secondaryGrayColor200,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.secondaryGrayColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.secondaryGrayColor500),
                  borderRadius: BorderRadius.circular(5),
                ),
                fillColor: AppColors.primaryWhiteColor60,
                filled: true,
                border: InputBorder.none,
                hintText: 'Enter your favorite tour list name',
                hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontFamily: 'Mulish'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 38.0, top: 5, bottom: 30),
          child: Text(
            "E.g: Singapore tour, Dubai, Europe",
            style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
      ],
    );
  }
}
