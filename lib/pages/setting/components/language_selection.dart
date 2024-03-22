import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  final language = [
    'English',
    'Bangla',
    'Melayu',
    'Euskara',
    'Galego',
    'Indonesia',
    'Italiano',
    'Romana',
    'Portugues'
  ];
  String? value1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Language",
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
              border: Border.all(color: AppColors.primaryGrayColor, width: 1)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Select Language",
                  style: TextStyle(fontSize: 16, fontFamily: 'Mulish'),
                ),
              ),
              value: value1,
              isExpanded: true,
              iconSize: 25,
              icon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.secondaryGrayColor600,
                ),
              ),
              items: language.map(buildMenuItems).toList(),
              onChanged: (value1) => setState(
                () {
                  this.value1 = value1;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  DropdownMenuItem<String> buildMenuItems(String language) =>
      DropdownMenuItem<String>(
        value: language,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            language,
            style: const TextStyle(fontSize: 16, fontFamily: 'Mulish'),
          ),
        ),
      );
}
