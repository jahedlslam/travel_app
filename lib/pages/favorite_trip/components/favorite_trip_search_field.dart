import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class FavoritetripSearchfield extends StatelessWidget {
  const FavoritetripSearchfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryWhiteColor60,
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
                borderSide: BorderSide(color: AppColors.secondaryGrayColor),
                borderRadius: BorderRadius.circular(5),
              ),
              border: InputBorder.none,
              suffixIcon: Icon(
                Icons.search_outlined,
                size: 20,
                color: AppColors.secondaryGrayColor600,
              ),
              hintText: 'Search your favorite trip list',
              hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ],
    );
  }
}
