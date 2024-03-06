import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      NameTextformField(emailController: _emailController),
                      const SizedBox(
                        height: 25,
                      ),
                      UsernameField(emailController: _emailController),
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
                  const SizedBox(
                    height: 160,
                  ),
                  const DoneButton(),
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
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Checkbox(
                value: isChecked,
                activeColor: Colors.grey,
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

class DoneButton extends StatelessWidget {
  const DoneButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 50,
          width: 127,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.homePage);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.all(15),
              textStyle: const TextStyle(
                  fontFamily: 'Mulish', fontSize: 20, color: Colors.white),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "DONE",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ],
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          controller: _passwordController,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
              border: InputBorder.none, hintText: 'Password'),
        ),
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          controller: _emailController,
          obscureText: false,
          decoration: const InputDecoration(
              border: InputBorder.none, hintText: 'Username'),
        ),
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          controller: _emailController,
          obscureText: false,
          decoration:
              const InputDecoration(border: InputBorder.none, hintText: 'Name'),
        ),
      ),
    );
  }
}
