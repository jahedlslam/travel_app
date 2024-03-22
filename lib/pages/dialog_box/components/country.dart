import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class Country extends StatefulWidget {
  const Country({super.key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  final countrys = [
    'Singapore',
    'Dubai',
    'Bangladesh',
    'Japan',
    'Afganistan',
    'Thailend'
  ];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 34,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Place of departure",
              style: TextStyle(fontSize: 16, fontFamily: 'Mulish'),
            ),
          ),
          value: value,
          isExpanded: true,
          iconSize: 25,
          icon: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.arrow_drop_down,
              color: AppColors.secondaryGrayColor600,
            ),
          ),
          items: countrys.map(buildMenuItem).toList(),
          onChanged: (value) => setState(
            () {
              this.value = value;
            },
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String countrys) =>
      DropdownMenuItem<String>(
        value: countrys,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            countrys,
            style: const TextStyle(fontSize: 16, fontFamily: 'Mulish'),
          ),
        ),
      );
}
