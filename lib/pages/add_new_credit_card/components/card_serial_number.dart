import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class CardSerialNumber extends StatelessWidget {
  const CardSerialNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
        color: AppColors.secondaryGrayColor800,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          AppColors.praimaryCardBoxShadow,
        ],
      ),
      child: const Center(
        child: Text(
          "4829 0921 8393 6666",
          style: TextStyle(
            fontFamily: 'KodeMono',
            color: Colors.white,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
