import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 35,
          width: 150,
          decoration: BoxDecoration(
            color: AppColors.secondaryGrayColor800,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: const Center(
            child: Text(
              "06 days 16 hours",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Mulish',
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 35,
          width: 73,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: const Center(
            child: Text(
              "-20%",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
