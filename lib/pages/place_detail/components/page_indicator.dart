import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constants/app_color.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controller,
      count: 3,
      effect: ExpandingDotsEffect(
          activeDotColor: AppColors.primaryGrayColor,
          dotColor: AppColors.primaryGrayColor,
          dotHeight: 5,
          dotWidth: 7,
          spacing: 11),
    );
  }
}
