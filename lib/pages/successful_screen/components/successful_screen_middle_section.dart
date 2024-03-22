import 'package:flutter/material.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Sign up for a successful\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Mulish',
                  ),
                ),
                TextSpan(
                  text: 'Capidesign@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Mulish',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You can login now to experience our great service.",
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontFamily: 'Mulish',
            ),
          ),
        ],
      ),
    );
  }
}
