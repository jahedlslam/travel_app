import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

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
