import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class Price extends StatefulWidget {
  const Price({super.key});

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  final price = [
    '(200-500)',
    '(500-800)',
    '(800-1100)',
    '(1100-1400)',
    '(1400-1700)',
    '(1700-2000)'
  ];
  String? pricevalue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 34,
      decoration: BoxDecoration(
        color: AppColors.secondaryGrayColor200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Price",
              style: TextStyle(fontSize: 16, fontFamily: 'Mulish'),
            ),
          ),
          value: pricevalue,
          isExpanded: true,
          iconSize: 25,
          icon: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.arrow_drop_down,
              color: AppColors.secondaryGrayColor600,
            ),
          ),
          items: price.map(buildPriceItem).toList(),
          onChanged: (pricevalue) => setState(
            () {
              this.pricevalue = pricevalue;
            },
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildPriceItem(String price) =>
      DropdownMenuItem<String>(
        value: price,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            price,
            style: const TextStyle(fontSize: 16, fontFamily: 'Mulish'),
          ),
        ),
      );
}
