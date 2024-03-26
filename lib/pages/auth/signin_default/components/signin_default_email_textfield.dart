import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(left: 10.0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _emailController,
                  obscureText: false,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username or email',
                      hintStyle: TextStyle(color: Colors.white60)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
