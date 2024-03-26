import 'package:flutter/material.dart';
import '../../place_detail_page/components/picture1.dart';

class Images extends StatelessWidget {
  const Images({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      onPageChanged: (value) {},
      children: const [
        Align(
          alignment: Alignment.center,
          child: Picture1(
            image:
                "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Picture1(
            image:
                "https://images.unsplash.com/flagged/photo-1562503542-2a1e6f03b16b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Picture1(
            image:
                "https://images.unsplash.com/photo-1552415274-73ad7198cb93?q=80&w=1334&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ),
        ),
      ],
    );
  }
}
