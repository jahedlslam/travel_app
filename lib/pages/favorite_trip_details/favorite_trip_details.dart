import 'package:flutter/material.dart';
import 'package:travel_app/models/tirp_list_model.dart';
import 'package:travel_app/pages/favorite_trip_details/components/country_name.dart';
import 'package:travel_app/pages/favorite_trip_details/components/text_title.dart';
import 'package:travel_app/pages/favorite_trip_details/components/top_image.dart';
import 'package:travel_app/pages/search_screen/components/search_field.dart';
import '../../models/placelist_model.dart';
import '../place_list/place_list.dart';

class FavotriteTripDetails extends StatefulWidget {
  final TripListModel data;
  const FavotriteTripDetails({super.key, required this.data});

  @override
  State<FavotriteTripDetails> createState() => _FavotriteTripDetailsState();
}

class _FavotriteTripDetailsState extends State<FavotriteTripDetails> {
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
                    tag: widget.data.image,
                    child: TopImage(data: widget.data)),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: CountryName(data: widget.data),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: SearchField(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  TextTitle(data: widget.data),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 525,
                  width: double.infinity,
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
      ),
    );
  }
}
