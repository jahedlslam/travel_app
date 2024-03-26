import 'package:flutter/material.dart';
import 'package:travel_app/pages/auth/sign_up/components/checkboxtitle.dart';
import 'package:travel_app/pages/auth/sign_up/components/floating_button_label.dart';
import 'package:travel_app/pages/auth/sign_up/components/heading_section.dart';
import 'package:travel_app/pages/auth/sign_up/components/name_textfield.dart';
import 'package:travel_app/pages/auth/sign_up/components/password_textfield.dart';
import 'package:travel_app/pages/auth/sign_up/components/username_textfield.dart';
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
          Padding(
            padding: const EdgeInsets.only(top: 195),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const HeadingSection(),
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
