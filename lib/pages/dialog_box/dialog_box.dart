import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/dialog_box/components/country.dart';
import 'package:travel_app/pages/dialog_box/components/date.dart';
import 'package:travel_app/pages/dialog_box/components/elevated_button.dart';
import 'package:travel_app/pages/dialog_box/components/heading_section.dart';
import 'package:travel_app/pages/dialog_box/components/price.dart';
import 'package:travel_app/pages/dialog_box/components/tour_type.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.primaryWhiteColor,
      content: const SizedBox(
        height: 418,
        width: 280,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingSection(),
            Country(),
            Date(),
            Price(),
            TourType(),
            Button(),
          ],
        ),
      ),
    );
  }
}
