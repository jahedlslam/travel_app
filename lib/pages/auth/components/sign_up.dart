import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
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
        backgroundColor: Colors.black87,
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
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 195),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
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
                  ),
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
                      const Text("Minimum 6 characters",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white54,
                            fontFamily: 'Mulish',
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _checkingSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _checkingSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 10),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
                value: isChecked,
                activeColor: Colors.grey,
                checkColor: Colors.black,
                tristate: true,
                onChanged: (bool? newbool) {
                  setState(() {
                    isChecked = newbool;
                  });
                }),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Creating an account means you're okay\nwith our",
                      style: TextStyle(
                        fontSize: 13,
                        color: isChecked! ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish',
                      )),
                  TextSpan(
                      text: ' Terms of Service & Privacy Policy \n',
                      style: TextStyle(
                        fontSize: 14,
                        color: isChecked! ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish',
                      )),
                  TextSpan(
                    text: 'and our default Notification Settings.',
                    style: TextStyle(
                      fontSize: 13,
                      color: isChecked! ? Colors.white : Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mulish',
                    ),
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

class PasswordTextformField extends StatelessWidget {
  const PasswordTextformField({
    super.key,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          BlurryContainer(
            blur: 2,
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(3),
            child: Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _passwordController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white70)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UsernameField extends StatelessWidget {
  const UsernameField({
    super.key,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          BlurryContainer(
            blur: 2,
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(3),
            child: Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _emailController,
                  obscureText: false,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.white70)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NameTextformField extends StatelessWidget {
  const NameTextformField({
    super.key,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          BlurryContainer(
            blur: 2,
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(3),
            child: Container(
              width: 320,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _emailController,
                  obscureText: false,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.white70)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
