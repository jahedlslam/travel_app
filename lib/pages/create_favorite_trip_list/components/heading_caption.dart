import 'package:flutter/material.dart';

class HeadingCaption extends StatelessWidget {
  const HeadingCaption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 85,
      width: 330,
      child: Text(
        "Create \na favorite trip list!",
        style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.w800,
            fontFamily: 'Mulish'),
      ),
    );
  }
}
