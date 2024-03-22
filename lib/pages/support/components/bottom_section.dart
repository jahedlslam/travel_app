import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 300,
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
                hintText: 'Starting gate',
                hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontFamily: 'Mulish'),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.send_sharp,
              color: AppColors.primaryColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
