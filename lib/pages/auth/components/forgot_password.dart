import 'package:flutter/material.dart';
import 'package:travel_app/pages/auth/components/forgot_pass_emailtextfield.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.successful);
        },
        label: const Row(
          children: [
            Text(
              "SEND",
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
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    children: [
                      HeadSection(),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Column(
                    children: [
                      EmailTextField(emailController: _emailController),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        width: 325,
                        child: Text(
                          "Enter the email address you used when you joined and we'll send you instructions to reset your password.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Mulish',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeadSection extends StatelessWidget {
  const HeadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 35.0),
      child: Text(
        "Forgot\nPassword",
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
