import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import '../../../routes/app_routes.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.addnewCreditCard);
      },
      child: Container(
        width: double.infinity,
        height: 46,
        decoration: BoxDecoration(color: AppColors.secondaryGrayColor200),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              size: 20,
              weight: 5,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "ADD NEW CREDIT CARD",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
