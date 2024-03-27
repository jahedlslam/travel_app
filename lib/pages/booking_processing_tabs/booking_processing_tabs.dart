import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/booking_processing_tabs/components/processing_pageview.dart';

class BookingProcessingTabs extends StatefulWidget {
  const BookingProcessingTabs({super.key});

  @override
  State<BookingProcessingTabs> createState() => _BookingProcessingTabsState();
}

class _BookingProcessingTabsState extends State<BookingProcessingTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      body: SizedBox(
        height: 1000,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.secondaryGrayColor800,
                  size: 30,
                ),
              ),
            ),
            Positioned(
                top: 100, left: 20, right: 20, child: ProcessingPageview()),
          ],
        ),
      ),
    );
  }
}
