import 'package:flutter/material.dart';

import '../../../constants/app_color.dart';

class TourType extends StatefulWidget {
  const TourType({super.key});

  @override
  State<TourType> createState() => _TourTypeState();
}

class _TourTypeState extends State<TourType> {
  final type = [
    'Saving',
    'Standerd',
    'Luxury',
  ];

  String? typevalue;
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
              "Tour type",
              style: TextStyle(fontSize: 16, fontFamily: 'Mulish'),
            ),
          ),
          value: typevalue,
          isExpanded: true,
          iconSize: 25,
          icon: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.arrow_drop_down,
              color: AppColors.secondaryGrayColor600,
            ),
          ),
          items: type.map(buildTourItem).toList(),
          onChanged: (typevalue) => setState(
            () {
              this.typevalue = typevalue;
            },
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildTourItem(String type) =>
      DropdownMenuItem<String>(
        value: type,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            type,
            style: const TextStyle(fontSize: 16, fontFamily: 'Mulish'),
          ),
        ),
      );
}
