import 'package:flutter/material.dart';
import 'package:travel_app/pages/introduction/components/about_section.dart';
import 'package:travel_app/pages/introduction/components/destination_details.dart';

class IntroductionTab extends StatelessWidget {
  const IntroductionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: DestinationDetails(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 20, bottom: 10),
          child: AboutSection(),
        ),
      ],
    );
  }
}
