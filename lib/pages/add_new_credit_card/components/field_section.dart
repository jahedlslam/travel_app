import 'package:flutter/material.dart';
import 'package:travel_app/pages/add_new_credit_card/components/name_field.dart';
import 'package:travel_app/pages/add_new_credit_card/components/number_field.dart';
import 'package:travel_app/pages/add_new_credit_card/components/valid_field.dart';

class FieldSection extends StatelessWidget {
  const FieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Type in your card details:",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w800,
              fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        const NumberField(),
        const SizedBox(
          height: 10,
        ),
        const NameField(),
        const SizedBox(
          height: 10,
        ),
        const ValidField(),
      ],
    );
  }
}
