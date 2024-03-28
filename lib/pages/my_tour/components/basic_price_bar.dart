import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/about/components/dotted_line.dart';
import 'package:travel_app/pages/my_tour/components/airport_row.dart';
import 'package:travel_app/pages/my_tour/components/insurance_row.dart';
import 'package:travel_app/pages/my_tour/components/tour_price_row.dart';
import 'package:travel_app/pages/my_tour/components/visa_row.dart';
import 'package:travel_app/pages/my_tour/components/year_row.dart';
import '../../../constants/app_color.dart';

class BasicPriceBar extends StatelessWidget {
  const BasicPriceBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(10),
            color: AppColors.primaryGrayColor,
            child: const SizedBox(
              height: 367,
              width: 327,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 90, top: 10, right: 10),
                    child: YearRow(),
                  ),
                  DottedLine(),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 30.0),
                    child: TourPriceRow(),
                  ),
                  DottedLine(),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 30.0),
                    child: InsuranceRow(),
                  ),
                  DottedLine(),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 30.0),
                    child: AirportRow(),
                  ),
                  DottedLine(),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 30.0, bottom: 15),
                    child: VisaRow(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
