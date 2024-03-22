import 'package:flutter/material.dart';
import 'package:travel_app/pages/home/components/menu_icon.dart';
import 'package:travel_app/pages/home/components/search_box.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SearchBox(),
        SizedBox(
          width: 10,
        ),
        MenuIcon(),
      ],
    );
  }
}
