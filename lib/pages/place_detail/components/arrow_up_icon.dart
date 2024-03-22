import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';

class ArrowUpIcon extends StatelessWidget {
  const ArrowUpIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        alignment: Alignment.bottomCenter,
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.placeDetail2);
          },
          icon: Icon(
            Icons.keyboard_arrow_up_outlined,
            color: AppColors.primaryWhiteColor,
            size: 25,
          ),
        ),
      ),
    );
  }
}
