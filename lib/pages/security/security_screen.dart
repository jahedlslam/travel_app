import 'package:flutter/material.dart';
import 'package:travel_app/pages/security/components/authentication_bar.dart';
import 'package:travel_app/pages/security/components/reliable_bar.dart';
import 'package:travel_app/pages/security/components/submit_bar.dart';
import '../../constants/app_color.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

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
              "Security",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Mulish',
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 180,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SubmitBar(),
                SizedBox(
                  height: 30,
                ),
                AuthenticationBar(),
                SizedBox(
                  height: 30,
                ),
                ReliableBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
