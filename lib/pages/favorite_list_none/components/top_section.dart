import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constants/app_color.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.primaryWhiteColor,
          ),
        ),
        const SizedBox(
          width: 110,
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: AppColors.primaryWhiteColor,
            dotColor: AppColors.secondaryGrayColor400,
            dotHeight: 5,
            dotWidth: 7,
            spacing: 11,
          ),
        ),
      ],
    );
  }
}
