import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.placeDetailPage);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.all(15),
      ),
      child: const Row(
        children: [
          Text(
            "BOOK NOW",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold),
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
    );
  }
}
