import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
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
            "Description",
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
            height: 60,
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
                hintText: 'Enter description of your favorite tour list',
                hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                    fontFamily: 'Mulish'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
