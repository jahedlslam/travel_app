import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class ChangingPassword extends StatelessWidget {
  const ChangingPassword({super.key});

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

class CurrentPassTextfield extends StatelessWidget {
  const CurrentPassTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 340,
      decoration: BoxDecoration(
        color: AppColors.secondaryGrayColor400,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryGrayColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryGrayColor500),
            borderRadius: BorderRadius.circular(5),
          ),
          fillColor: Colors.white60,
          filled: true,
          border: InputBorder.none,
          hintText: 'Enter current password',
          hintStyle: TextStyle(
              fontSize: 15, color: Colors.grey.shade600, fontFamily: 'Mulish'),
        ),
      ),
    );
  }
}

class PasswordTextfield extends StatelessWidget {
  const PasswordTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 340,
      decoration: BoxDecoration(
        color: AppColors.secondaryGrayColor400,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryGrayColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryGrayColor500),
            borderRadius: BorderRadius.circular(5),
          ),
          fillColor: Colors.white60,
          filled: true,
          border: InputBorder.none,
          hintText: 'Enter new password',
          hintStyle: TextStyle(
              fontSize: 15, color: Colors.grey.shade600, fontFamily: 'Mulish'),
          suffixIcon: const Icon(
            Icons.remove_red_eye,
          ),
          suffixIconColor: AppColors.secondaryGrayColor600,
        ),
      ),
    );
  }
}
