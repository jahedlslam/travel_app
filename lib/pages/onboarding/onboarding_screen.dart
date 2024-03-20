import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/onboarding/components/get_start_button.dart';
import 'package:travel_app/pages/onboarding/components/intro_page_2.dart';
import 'package:travel_app/pages/onboarding/components/intro_page_4.dart';
import 'components/intro_page_1.dart';
import 'components/intro_page_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/first_img.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (value) {},
              children: const [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
                IntroPage4(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                alignment: const Alignment(-0.8, 0.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      effect: ExpandingDotsEffect(
                          activeDotColor: AppColors.primaryGrayColor,
                          dotColor: AppColors.primaryGrayColor,
                          dotHeight: 5,
                          dotWidth: 7,
                          spacing: 11),
                    ),
                    const GetStartButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
