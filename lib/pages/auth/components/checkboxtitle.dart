import 'package:flutter/material.dart';

class Checkboxtitle extends StatelessWidget {
  const Checkboxtitle({
    super.key,
    required this.isChecked,
  });

  final bool? isChecked;

  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}
