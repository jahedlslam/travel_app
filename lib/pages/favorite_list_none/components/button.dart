import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.favoriteTripList);
      },
      child: Container(
        height: 46,
        width: 344,
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: const Center(
          child: Text(
            "CREATE A TRIP LIST",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Mulish',
                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
