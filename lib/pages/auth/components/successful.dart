import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';
import 'successful_screen_middle_section.dart';

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
        label: const Row(
          children: [
            Text(
              "GET START",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
          ],
        ),
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

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 35.0),
      child: Text(
        "Successful",
        style: TextStyle(
          wordSpacing: 2,
          fontSize: 44,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'Mulish',
        ),
      ),
    );
  }
}
