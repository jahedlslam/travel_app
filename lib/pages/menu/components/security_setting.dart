import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class SecuritySetting extends StatefulWidget {
  const SecuritySetting({super.key});

  @override
  State<SecuritySetting> createState() => _SecuritySettingState();
}

class _SecuritySettingState extends State<SecuritySetting> {
  bool submit = false;
  bool isSwitch = false;
  bool light = false;
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
          Positioned(
            top: 180,
            left: 30,
            right: 30,
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
                          "Submit OTP code",
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
                      value: submit,
                      onChanged: (value) {
                        setState(() {
                          submit = value;
                        });
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
                          "Fingerprint authentication",
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
                          width: 220,
                          child: Text(
                            "No need to remember password. You only need to use your fingerprint to log in to your account.",
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
                          "Reliable device",
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
                      value: light,
                      onChanged: (value) {
                        setState(
                          () {
                            light = value;
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
}
