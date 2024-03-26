import 'package:flutter/material.dart';
import 'package:travel_app/pages/place_list/place_list.dart';
import 'package:travel_app/routes/app_routes.dart';
import '../../../models/placelist_model.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView.builder(
            itemCount: placeList.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.placeDetailPage);
                  },
                  child: PlaceList(
                    data: placeList[index],
                  ),
                ),
              );
            },
          ),
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
