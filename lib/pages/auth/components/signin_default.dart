import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class SignInDefault extends StatelessWidget {
  SignInDefault({super.key});

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

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
                  ),
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
                  const SizedBox(
                    height: 40,
                  ),
                  const SignInButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
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
              Navigator.pushNamed(context, AppRoutes.signinError);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.all(15),
              textStyle: const TextStyle(
                  fontFamily: 'Mulish', fontSize: 20, color: Colors.white),
            ),
            child: const Row(
              children: [
                Text(
                  "SIGN IN",
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

class PasswordTextformfield extends StatelessWidget {
  const PasswordTextformfield({
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

class EmailTextformfield extends StatelessWidget {
  const EmailTextformfield({
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
              border: InputBorder.none, hintText: 'Username or email'),
        ),
      ),
    );
  }
}
