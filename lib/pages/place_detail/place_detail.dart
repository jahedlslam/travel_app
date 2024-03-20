import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/place_detail_model.dart';
import '../../routes/app_routes.dart';
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
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        activeDotColor: AppColors.primaryGrayColor,
                        dotColor: AppColors.primaryGrayColor,
                        dotHeight: 5,
                        dotWidth: 7,
                        spacing: 11),
                  ),
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

class BookingButton extends StatelessWidget {
  const BookingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.placeDetail2);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.all(15),
      ),
      child: const Row(
        children: [
          Text(
            "BOOK NOW",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
        ],
      ),
    );
  }
}

class ArrowUpIcon extends StatelessWidget {
  const ArrowUpIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        alignment: Alignment.bottomCenter,
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.placeDetail2);
          },
          icon: Icon(
            Icons.keyboard_arrow_up_outlined,
            color: AppColors.primaryWhiteColor,
            size: 25,
          ),
        ),
      ),
    );
  }
}

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.homePage);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class ArrowLeftIcon extends StatelessWidget {
  const ArrowLeftIcon({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        alignment: Alignment.centerRight,
        child: IconButton(
          onPressed: () {
            _controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
          },
          icon: const Icon(
            Icons.keyboard_double_arrow_left_outlined,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
    );
  }
}
