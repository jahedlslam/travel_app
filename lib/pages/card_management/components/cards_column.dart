import 'package:flutter/material.dart';
import 'package:travel_app/pages/card_management/components/cards.dart';

class CardsColumn extends StatelessWidget {
  const CardsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Cards(
            card: "assets/icons/Mastercard.png",
            cardNumber: "**** **** **** 6666",
            name: "CAPI Creative"),
        Cards(
            card: "assets/icons/credit-card.png",
            cardNumber: "**** **** **** 6852",
            name: "CAPI Creative"),
        Cards(
            card: "assets/icons/Visa.png",
            cardNumber: "**** **** **** 9154",
            name: "CAPI Creative"),
      ],
    );
  }
}
