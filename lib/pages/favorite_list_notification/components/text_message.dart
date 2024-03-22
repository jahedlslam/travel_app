import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: "Added ",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                  fontFamily: 'Mulish')),
          TextSpan(
              text: ' "Nagoya & Tokyo" ',
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                  fontFamily: 'Mulish')),
          TextSpan(
            text: 'to the',
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
                fontFamily: 'Mulish'),
          ),
          TextSpan(
            text: ' JAPAN ',
            style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 16,
                fontFamily: 'Mulish'),
          ),
          TextSpan(
            text: 'list.',
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
                fontFamily: 'Mulish'),
          ),
        ],
      ),
    );
  }
}
