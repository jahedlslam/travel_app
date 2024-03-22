import 'package:flutter/material.dart';
import 'package:travel_app/models/place_detail_model.dart';
import 'package:travel_app/pages/place_detail/components/arrow_back_icon.dart';
import 'package:travel_app/pages/place_detail/components/arrow_left_icon.dart';
import 'package:travel_app/pages/place_detail/components/arrow_up_icon.dart';
import 'package:travel_app/pages/place_detail/components/booking_button.dart';
import 'package:travel_app/pages/place_detail/components/page_indicator.dart';
import 'components/place_onboarding.dart';

class PlaceDetail extends StatefulWidget {
  const PlaceDetail({super.key});

  @override
  State<PlaceDetail> createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail> {
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {},
            children: [
              PlaceOnboarding(data: placeDetail[0]),
              PlaceOnboarding(data: placeDetail[1]),
              PlaceOnboarding(data: placeDetail[2]),
            ],
          ),
          const ArrowBackIcon(),
          ArrowLeftIcon(controller: _controller),
          const ArrowUpIcon(),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              alignment: const Alignment(-0.8, 0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PageIndicator(controller: _controller),
                  const BookingButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
