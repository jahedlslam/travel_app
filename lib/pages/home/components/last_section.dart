import 'package:flutter/material.dart';
import 'package:travel_app/pages/Discovery/discovery_section.dart';
import '../../../models/discovery_section_model.dart';
import '../../../routes/app_routes.dart';

class LastSection extends StatelessWidget {
  const LastSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Discovery",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Mulish'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 240,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.discoveryAsia);
                    },
                    child: DiscoverySection(
                      data: discoverySection[0],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.discoveryEurope);
                    },
                    child: DiscoverySection(
                      data: discoverySection[1],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.discoveryAmerica);
                    },
                    child: DiscoverySection(
                      data: discoverySection[2],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 280,
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "VIEW ALL-",
              style: TextStyle(
                  fontFamily: 'Mulish',
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
