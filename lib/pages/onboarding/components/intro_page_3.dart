import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25, top: 195),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Booking tours super fast \n& convenient",
            style: TextStyle(
              wordSpacing: 2,
              fontSize: 44,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Mulish',
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Text(
            "The Ionian Islands are splendid, cinematic paradise. The waters are bluest blue, the sands are achingly silky and smooth. Everything looks heavily Photoshopped.",
            style: TextStyle(fontSize: 17, color: Colors.white54),
          )
        ],
      ),
    );
  }
}
