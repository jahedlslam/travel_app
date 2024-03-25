import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/changing_password/components/current_pass_field.dart';
import 'package:travel_app/pages/changing_password/components/password_text_field.dart';

class ChangingPasswordScreen extends StatelessWidget {
  const ChangingPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pop(context);
        },
        label: const SizedBox(
          height: 46,
          width: 310,
          child: Center(
            child: Text(
              "SAVE",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.secondaryGrayColor800,
                size: 30,
              ),
            ),
          ),
          const Positioned(
            top: 100,
            left: 30,
            child: Text(
              "Password",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Mulish',
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Current password",
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CurrentPassTextfield(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "New password",
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PasswordTextfield(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
