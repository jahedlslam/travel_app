import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
