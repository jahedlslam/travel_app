import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';
import '../../dialog_box/dialog_box.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  void showFilter() {
    showDialog(
        context: context,
        builder: (context) {
          return const DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          fillColor: AppColors.secondaryGrayColor200,
          filled: true,
          border: InputBorder.none,
          suffixIcon: IconButton(
            onPressed: showFilter,
            icon: Image.asset(
              "assets/icons/filter.png",
              color: Colors.grey.shade600,
              width: 22,
            ),
          ),
          hintText: 'Search for tour',
          hintStyle: TextStyle(
              fontSize: 14, color: Colors.grey.shade600, fontFamily: 'Mulish'),
        ),
      ),
    );
  }
}
