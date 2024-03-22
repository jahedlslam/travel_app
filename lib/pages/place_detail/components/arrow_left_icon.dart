import 'package:flutter/material.dart';

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
