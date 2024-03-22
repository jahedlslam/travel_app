import 'package:flutter/material.dart';
import 'package:travel_app/pages/card_management/components/add_card_button.dart';
import 'package:travel_app/pages/card_management/components/cards_column.dart';
import '../../constants/app_color.dart';

class CardManagement extends StatelessWidget {
  const CardManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pop(context);
        },
        label: const SizedBox(
          height: 46,
          width: 310,
          child: Center(
            child: Text(
              "SAVE",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.secondaryGrayColor800,
                size: 30,
              ),
            ),
          ),
          const Positioned(
            top: 110,
            left: 30,
            child: Text(
              "Credit Card",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Mulish',
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 190,
            left: 30,
            right: 30,
            child: CardsColumn(),
          ),
          const Positioned(
            top: 370,
            right: 20,
            left: 20,
            child: AddCardButton(),
          ),
        ],
      ),
    );
  }
}
