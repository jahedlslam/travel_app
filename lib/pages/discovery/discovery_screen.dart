import 'package:flutter/material.dart';
import 'package:travel_app/models/discovery_section_model.dart';
import 'package:travel_app/pages/discovery/components/country_name.dart';
import 'package:travel_app/pages/discovery/components/custom_tab_bar.dart';
import 'package:travel_app/pages/discovery/components/description.dart';
import 'package:travel_app/pages/discovery/components/top_image.dart';
import 'package:travel_app/pages/home/components/head_section.dart';
import '../../models/placelist_model.dart';
import '../place_list/place_list.dart';

class DiscoveryScreen extends StatefulWidget {
  final DiscoverySectionModel data;
  const DiscoveryScreen({super.key, required this.data});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                    transitionOnUserGestures: true,
                    tag: widget.data.imageUrl,
                    child: TopImage(widget: widget)),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: CountryName(widget: widget),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: HeadSection(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Description(widget: widget),
                  Column(
                    children: [
                      const CustomTabBar(),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Expanded(
                          child: ListView.builder(
                            itemCount: placeList.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: PlaceList(data: placeList[index]),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 280, bottom: 5),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "VIEW ALL-",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
