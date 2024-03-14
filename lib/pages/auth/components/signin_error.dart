import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

final _formKey = GlobalKey<FormState>();

class SignInError extends StatefulWidget {
  const SignInError({super.key});

  @override
  State<SignInError> createState() => _SignInDefaultState();
}

class _SignInDefaultState extends State<SignInError> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    final isValidEmail = emailRegex.hasMatch(email ?? '');
    if (!isValidEmail) {
      return 'Please check your username and password and try again.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: Colors.black87,
        onPressed: () {
          _formKey.currentState!.validate();
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
                  const Row(
                    children: [
                      HeadSection(),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        EmailTextformField(emailController: _emailController),
                        const SizedBox(
                          height: 25,
                        ),
                        _passwordTextformField(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextNavigateButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _passwordTextformField() {
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
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white60),
                  ),
                  validator: validateEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextNavigateButton extends StatelessWidget {
  const TextNavigateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, AppRoutes.forgotPassword),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white54,
                fontFamily: 'Mulish',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EmailTextformField extends StatelessWidget {
  const EmailTextformField({
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
                      hintText: 'Username or email',
                      hintStyle: TextStyle(color: Colors.white60)),
                  validator: (name) => name!.length < 3
                      ? 'Name should be at least 3 character'
                      : null,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
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
        "Sign in",
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
