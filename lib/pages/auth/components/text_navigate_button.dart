import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class TextNavigateButton extends StatelessWidget {
  const TextNavigateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, AppRoutes.forgotPassword),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white54,
                fontFamily: 'Mulish',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
