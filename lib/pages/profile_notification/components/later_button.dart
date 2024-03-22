import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class LaterButton extends StatelessWidget {
  const LaterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGrayColor,
        ),
        child: const Center(
          child: Text(
            "LATER",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
