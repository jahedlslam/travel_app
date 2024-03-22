import 'package:flutter/material.dart';
import 'package:travel_app/pages/add_new_credit_card/components/card_serial_number.dart';
import 'package:travel_app/pages/add_new_credit_card/components/customer_name.dart';
import 'package:travel_app/pages/add_new_credit_card/components/valid_date.dart';
import '../../../constants/app_color.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          width: 327,
          decoration: BoxDecoration(
            color: AppColors.secondaryGrayColor800,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 0,
          right: 10,
          child: Image.asset(
            "assets/icons/money.png",
            width: 60,
          ),
        ),
        const Positioned(
          top: 70,
          left: 20,
          right: 20,
          child: CardSerialNumber(),
        ),
        const Positioned(
          bottom: 20,
          right: 30,
          left: 30,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomerName(),
                  ValidDate(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
