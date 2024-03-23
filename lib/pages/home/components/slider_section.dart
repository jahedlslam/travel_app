import 'package:flutter/material.dart';
import 'package:travel_app/pages/home/components/place_card.dart';
import 'package:travel_app/pages/place_detail/place_detail.dart';
import '../../../models/placecard_model.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Ondue",
              style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        SizedBox(
          height: 310,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: placeCard.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceDetail(
                        data: placeCard[index],
                      ),
                    ),
                  );
                },
                child: PlaceCard(
                  data: placeCard[index],
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
// ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, AppRoutes.placeDetail);
//                 },
//                 child: PlaceCard(
//                   data: placeCard[0],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, AppRoutes.placeDetail);
//                 },
//                 child: PlaceCard(
//                   data: placeCard[1],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, AppRoutes.placeDetail);
//                 },
//                 child: PlaceCard(
//                   data: placeCard[2],
//                 ),
//               ),
//             ],
//           ),