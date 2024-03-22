import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/notification/components/all_notifications.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 1070,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
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
                    "Notification",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  top: 170,
                  right: 0,
                  left: 0,
                  child: AllNotifications(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
