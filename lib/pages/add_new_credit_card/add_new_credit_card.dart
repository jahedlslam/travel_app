import 'package:flutter/material.dart';
import 'package:travel_app/pages/add_new_credit_card/components/credit_card.dart';
import 'package:travel_app/pages/add_new_credit_card/components/field_section.dart';
import '../../constants/app_color.dart';

class AddnewCreditCard extends StatelessWidget {
  const AddnewCreditCard({super.key});

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
              "NEXT",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 600,
          child: Stack(
            children: [
              Positioned(
                top: 40,
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
                top: 100,
                left: 30,
                child: Text(
                  "Add new card",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Mulish',
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                top: 200,
                right: 30,
                left: 30,
                child: CreditCard(),
              ),
              const Positioned(
                top: 400,
                right: 30,
                left: 30,
                child: FieldSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
