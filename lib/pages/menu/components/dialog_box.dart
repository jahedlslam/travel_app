import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }

  final countrys = [
    'Singapore',
    'Dubai',
    'Bangladesh',
    'Japan',
    'Afganistan',
    'Thailend'
  ];
  String? value;

  final price = [
    '(200-500)',
    '(500-800)',
    '(800-1100)',
    '(1100-1400)',
    '(1400-1700)',
    '(1700-2000)'
  ];
  String? pricevalue;

  final type = [
    'Saving',
    'Standerd',
    'Luxury',
  ];
  String? typevalue;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 418,
        width: 280,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Filter",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Mulish',
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Using filter will help search more\naccurately!",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Mulish',
                fontSize: 14,
              ),
            ),
            Container(
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
            ),
            Container(
              width: double.infinity,
              height: 34,
              decoration: BoxDecoration(
                color: AppColors.secondaryGrayColor200,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Departure day",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          color: Colors.grey.shade600),
                    ),
                  ),
                  IconButton(
                    onPressed: _showDatePicker,
                    icon: Icon(
                      Icons.calendar_month,
                      color: AppColors.secondaryGrayColor600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
            ),
            Container(
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
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(10)),
              child: const Center(
                child: Text(
                  "APPLY",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Mulish',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
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
