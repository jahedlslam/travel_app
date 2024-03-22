import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black, padding: const EdgeInsets.all(10)),
      child: const Center(
        child: Text(
          "APPLY",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Mulish',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
