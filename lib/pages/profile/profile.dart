import 'package:flutter/material.dart';
import 'package:travel_app/pages/profile/components/card_management.dart';
import 'package:travel_app/pages/profile/components/date_textfield.dart';
import 'package:travel_app/pages/profile/components/email_textfield.dart';
import 'package:travel_app/pages/profile/components/floating_button_label.dart';
import 'package:travel_app/pages/profile/components/name_textfield.dart';
import 'package:travel_app/pages/profile/components/number_textfield.dart';
import 'package:travel_app/pages/profile/components/password.dart';
import 'package:travel_app/pages/profile_notification/profile_notification.dart';

import '../../constants/app_color.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const ProfileNotification();
            },
          );
        },
        label: const FloatingButtonLabel(),
      ),
      body: SizedBox(
        child: Stack(
          children: [
            Positioned(
              top: 50,
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
              top: 110,
              left: 30,
              child: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Mulish',
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
              top: 190,
              left: 30,
              right: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NameTextfield(),
                  SizedBox(
                    height: 20,
                  ),
                  EmailTextfield(),
                  SizedBox(
                    height: 20,
                  ),
                  PhoneNumberTextfield(),
                  SizedBox(
                    height: 20,
                  ),
                  DateTextfield(),
                ],
              ),
            ),
            const Positioned(
              top: 555,
              left: 30,
              right: 30,
              child: Column(
                children: [
                  Divider(
                    thickness: 2,
                  ),
                  Password(),
                  Divider(
                    thickness: 2,
                  ),
                  CardManagement(),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
