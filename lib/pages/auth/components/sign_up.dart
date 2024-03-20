import 'package:flutter/material.dart';
import 'package:travel_app/pages/auth/components/checkboxtitle.dart';
import 'package:travel_app/pages/auth/components/sign_up_name_textfield.dart';
import 'package:travel_app/pages/auth/components/sign_up_pass_textfield.dart';
import 'package:travel_app/pages/auth/components/sign_up_username_textfield.dart';
import '../../../constants/app_color.dart';
import '../../../routes/app_routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.homePage);
        },
        label: const Row(
          children: [
            Text(
              "DONE",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NameTextformField(emailController: _nameController),
                      const SizedBox(
                        height: 25,
                      ),
                      UsernameField(emailController: _usernameController),
                      const SizedBox(
                        height: 25,
                      ),
                      PasswordTextformField(
                          passwordController: _passwordController),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Minimum 6 characters",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white54,
                          fontFamily: 'Mulish',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, bottom: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isChecked,
                            activeColor: AppColors.primaryGrayColor,
                            checkColor: AppColors.primaryColor,
                            side:
                                BorderSide(color: AppColors.primaryWhiteColor),
                            tristate: true,
                            onChanged: (bool? newbool) {
                              setState(
                                () {
                                  isChecked = newbool;
                                },
                              );
                            },
                          ),
                          Checkboxtitle(isChecked: isChecked),
                        ],
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
            "Sign up",
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
