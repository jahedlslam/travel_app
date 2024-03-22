import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class NationSelection extends StatefulWidget {
  const NationSelection({super.key});

  @override
  State<NationSelection> createState() => _NationSelectionState();
}

class _NationSelectionState extends State<NationSelection> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nation",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w800,
              fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: 34,
          decoration: BoxDecoration(
              color: AppColors.secondaryGrayColor200,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 1)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Which Country?",
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
        ),
      ],
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
