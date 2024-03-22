import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';

class SecurityButton extends StatelessWidget {
  const SecurityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.securitySetting);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
        ),
        child: const Center(
          child: Text(
            "SECURITY SETTING",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
