import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class NameTextfield extends StatelessWidget {
  const NameTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w800,
              fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 340,
          decoration: BoxDecoration(
            color: AppColors.secondaryGrayColor400,
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
                borderSide: BorderSide(color: AppColors.secondaryGrayColor500),
                borderRadius: BorderRadius.circular(5),
              ),
              fillColor: AppColors.primaryWhiteColor60,
              filled: true,
              border: InputBorder.none,
              hintText: 'CAPI Design',
              hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade600,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ],
    );
  }
}
