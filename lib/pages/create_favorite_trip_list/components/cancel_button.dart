import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 46,
        width: 155,
        decoration: BoxDecoration(color: AppColors.secondaryGrayColor),
        child: const Center(
          child: Text(
            "CANCEL",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Mulish',
                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
