import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class Cards extends StatelessWidget {
  final String card;
  final String cardNumber;
  final String name;
  const Cards(
      {super.key,
      required this.card,
      required this.cardNumber,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                card,
                fit: BoxFit.cover,
                width: 50,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardNumber,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish',
                        color: Colors.grey.shade600),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Mulish',
                    ),
                  ),
                ],
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.primaryGrayColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
