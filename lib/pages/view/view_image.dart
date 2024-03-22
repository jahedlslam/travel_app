import 'package:flutter/material.dart';
import 'package:travel_app/pages/view/components/images.dart';
import 'package:travel_app/pages/view/components/top_section.dart';
import '../../constants/app_color.dart';

class ViewImage extends StatefulWidget {
  const ViewImage({super.key});

  @override
  State<ViewImage> createState() => _ViewImageState();
}

class _ViewImageState extends State<ViewImage> {
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
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(color: AppColors.primaryGrayColor),
        child: Stack(
          children: [
            Images(controller: _controller),
            Positioned(
              top: 50,
              left: 10,
              child: TopSection(controller: _controller),
            ),
          ],
        ),
      ),
    );
  }
}
