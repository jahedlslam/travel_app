import 'package:flutter/material.dart';
import 'package:travel_app/pages/about/components/dotted_line.dart';

class TermsRequiredBar extends StatelessWidget {
  const TermsRequiredBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30, top: 50, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "REQUIRED TERMS\nWHEN REGISTERING ONLINE",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mulish'),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'I. TOUR PRICE PRICE',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mulish'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Travel fares are calculated in Dollar (USD). In case customers pay in VND will be converted into USD at the exchange rate of Bank for Investment and Development of Vietnam - Ho Chi Minh City branch at the time of payment. Fares include only those items that are clearly listed in the "Include" section of the travel program. Vietravel has no obligation to pay any expenses not covered by the "Include" section.',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Mulish',
                height: 2),
          ),
          SizedBox(
            height: 30,
          ),
          DottedLine(),
          SizedBox(
            height: 30,
          ),
          Text(
            'II. PRICE FOR CHILDREN',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mulish'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Children under 2 years old: 30% on travel fares.- Children from 2 to under 12 years old: From 75% -100% (depending on the policy of the airline or accommodation room of each tour program) on travel tickets, please see the section carefully conditions in each tour program. Two adults can only accompany 01 children, the second child or more will buy additional single bed. - Children 12 and older, buy a ticket like an adult.',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Mulish',
                height: 2),
          ),
          SizedBox(
            height: 30,
          ),
          DottedLine(),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
