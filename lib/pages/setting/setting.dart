import 'package:flutter/material.dart';
import 'package:travel_app/pages/setting/components/floating_button_label.dart';
import 'package:travel_app/pages/setting/components/language_selection.dart';
import 'package:travel_app/pages/setting/components/nation_selection.dart';
import 'package:travel_app/pages/setting/components/notification.dart';
import 'package:travel_app/pages/setting/components/security.dart';
import 'package:travel_app/pages/setting/components/setting_other.dart';
import '../../constants/app_color.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
        label: const FloatingButtonLabel(),
      ),
      body: Stack(
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
              "Setting",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Mulish',
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 200,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NationSelection(),
                SizedBox(
                  height: 20,
                ),
                LanguageSelection(),
              ],
            ),
          ),
          const Positioned(
            top: 385,
            left: 0,
            right: 0,
            child: Divider(
              thickness: 2,
            ),
          ),
          const Positioned(
            top: 395,
            right: 30,
            left: 30,
            child: Security(),
          ),
          const Positioned(
            top: 490,
            left: 0,
            right: 0,
            child: Divider(
              thickness: 2,
            ),
          ),
          const Positioned(
            top: 520,
            right: 20,
            left: 20,
            child: Column(
              children: [
                NotificationBar(),
                SizedBox(
                  height: 30,
                ),
                SettingOther(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
