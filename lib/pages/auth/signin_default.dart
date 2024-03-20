import 'package:flutter/material.dart';
import 'package:travel_app/pages/auth/components/signin_default_email_textfield.dart';
import 'package:travel_app/pages/auth/components/signin_default_pass_textfield.dart';
import '../../constants/app_color.dart';
import '../../routes/app_routes.dart';

class SignInDefault extends StatelessWidget {
  SignInDefault({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.signinError);
        },
        label: const Row(
          children: [
            Text(
              "SIGN IN",
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
            padding: const EdgeInsets.only(top: 195),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const HeadSection(),
                  const SizedBox(
                    height: 55,
                  ),
                  Column(
                    children: [
                      EmailTextformfield(emailController: _emailController),
                      const SizedBox(
                        height: 25,
                      ),
                      PasswordTextformfield(
                          passwordController: _passwordController),
                    ],
                  ),
                  const SizedBox(
                    height: 220,
                  ),
                  const SizedBox(
                    width: 325,
                    child: Text(
                      "The Ionian Islands are splendid, cinematic paradise. The waters are bluest blue, the sands are achingly silky and smooth. Everything looks heavily Photoshopped.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                        fontFamily: 'Mulish',
                      ),
                    ),
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
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 35.0),
          child: Text(
            "Sign in",
            style: TextStyle(
              wordSpacing: 2,
              fontSize: 44,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Mulish',
            ),
          ),
        ),
      ],
    );
  }
}
