import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class RightCorner extends StatelessWidget {
  const RightCorner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.close,
          color: AppColors.primaryGrayColor,
        ),
        const Text(
          "\$512.0",
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w800,
              fontFamily: 'Mulish',
              fontSize: 20),
        ),
      ],
    );
  }
}
