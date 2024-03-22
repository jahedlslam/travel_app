import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class SearchText extends StatelessWidget {
  const SearchText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 28,
                width: 77,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.secondaryGrayColor200),
                child: Center(
                  child: Text(
                    "Singapore",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14,
                        fontFamily: 'Mulish'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 28,
                width: 77,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.secondaryGrayColor200),
                child: Center(
                  child: Text(
                    "Japan",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14,
                        fontFamily: 'Mulish'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 28,
                width: 77,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey.shade200),
                child: Center(
                  child: Text(
                    "Island",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14,
                        fontFamily: 'Mulish'),
                  ),
                ),
              ),
            ),
            Container(
              height: 28,
              width: 77,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.secondaryGrayColor200),
              child: Center(
                child: Text(
                  "Beach",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 14,
                      fontFamily: 'Mulish'),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 28,
                width: 77,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.secondaryGrayColor200),
                child: Center(
                  child: Text(
                    "Afganistan",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14,
                        fontFamily: 'Mulish'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 28,
                width: 77,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.secondaryGrayColor200),
                child: Center(
                  child: Text(
                    "Thailend",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14,
                        fontFamily: 'Mulish'),
                  ),
                ),
              ),
            ),
            Container(
              height: 28,
              width: 77,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.secondaryGrayColor200),
              child: Center(
                child: Text(
                  "Dubai",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 14,
                      fontFamily: 'Mulish'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
