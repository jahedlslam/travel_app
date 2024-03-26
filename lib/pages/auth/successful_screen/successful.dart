import 'package:flutter/material.dart';
import 'package:travel_app/pages/auth/successful_screen/components/floating_button_label.dart';
import 'package:travel_app/pages/auth/successful_screen/components/heading_section.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';
import 'components/successful_screen_middle_section.dart';

class Successful extends StatelessWidget {
  const Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.signUp);
        },
        label: const FloatingButtonLabel(),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/first_img.jpeg"),
                  fit: BoxFit.cover),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeadingSection(),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  MiddleSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
