import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class CurrentPassTextfield extends StatelessWidget {
  const CurrentPassTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 340,
      decoration: BoxDecoration(
        color: AppColors.secondaryGrayColor400,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryGrayColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryGrayColor500),
            borderRadius: BorderRadius.circular(5),
          ),
          fillColor: AppColors.primaryWhiteColor60,
          filled: true,
          border: InputBorder.none,
          hintText: 'Enter current password',
          hintStyle: TextStyle(
              fontSize: 15, color: Colors.grey.shade600, fontFamily: 'Mulish'),
        ),
      ),
    );
  }
}
