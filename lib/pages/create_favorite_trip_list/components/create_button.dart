import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.favoriteList);
      },
      child: Container(
        height: 46,
        width: 155,
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: const Center(
          child: Text(
            "CREATE",
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
