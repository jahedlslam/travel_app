import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/routes/app_routes.dart';

import '../../../constants/app_color.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isSwitch = false;
  bool isSwitch1 = false;
  final language = [
    'English',
    'Bangla',
    'Melayu',
    'Euskara',
    'Galego',
    'Indonesia',
    'Italiano',
    'Romana',
    'Portugues'
  ];
  String? value1;
  final countrys = [
    'Singapore',
    'Dubai',
    'Bangladesh',
    'Japan',
    'Afganistan',
    'Thailend'
  ];
  String? value;
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
          Positioned(
            top: 200,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nation",
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 34,
                  decoration: BoxDecoration(
                      color: AppColors.secondaryGrayColor200,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Which Country?",
                          style: TextStyle(fontSize: 16, fontFamily: 'Mulish'),
                        ),
                      ),
                      value: value,
                      isExpanded: true,
                      iconSize: 25,
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.secondaryGrayColor600,
                        ),
                      ),
                      items: countrys.map(buildMenuItem).toList(),
                      onChanged: (value) => setState(
                        () {
                          this.value = value;
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Language",
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 34,
                  decoration: BoxDecoration(
                      color: AppColors.secondaryGrayColor200,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: AppColors.primaryGrayColor, width: 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Select Language",
                          style: TextStyle(fontSize: 16, fontFamily: 'Mulish'),
                        ),
                      ),
                      value: value1,
                      isExpanded: true,
                      iconSize: 25,
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.secondaryGrayColor600,
                        ),
                      ),
                      items: language.map(buildMenuItem).toList(),
                      onChanged: (value1) => setState(
                        () {
                          this.value1 = value1;
                        },
                      ),
                    ),
                  ),
                ),
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
          Positioned(
            top: 395,
            right: 30,
            left: 30,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.securitySetting);
              },
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Security",
                          style: TextStyle(
                              fontFamily: 'Mulish',
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w800,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "One more step for your account not to be attacked.",
                          style: TextStyle(
                              fontFamily: 'Mulish',
                              color: Colors.grey.shade800,
                              fontSize: 12),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.secondaryGrayColor400,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: 490,
            left: 0,
            right: 0,
            child: Divider(
              thickness: 2,
            ),
          ),
          Positioned(
            top: 520,
            right: 20,
            left: 20,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Notification",
                          style: TextStyle(
                              fontFamily: 'Mulish',
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w800,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 215,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              color: Colors.grey.shade800,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CupertinoSwitch(
                      activeColor: AppColors.primaryColor,
                      value: isSwitch,
                      onChanged: (value) {
                        setState(
                          () {
                            isSwitch = value;
                          },
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Setting other",
                          style: TextStyle(
                              fontFamily: 'Mulish',
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w800,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 215,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              color: Colors.grey.shade800,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CupertinoSwitch(
                      activeColor: AppColors.primaryColor,
                      value: isSwitch1,
                      onChanged: (value) {
                        setState(
                          () {
                            isSwitch1 = value;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String countrys) =>
      DropdownMenuItem<String>(
        value: countrys,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            countrys,
            style: const TextStyle(fontSize: 16, fontFamily: 'Mulish'),
          ),
        ),
      );
  DropdownMenuItem<String> buildMenuItems(String language) =>
      DropdownMenuItem<String>(
        value: language,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            language,
            style: const TextStyle(fontSize: 16, fontFamily: 'Mulish'),
          ),
        ),
      );
}
