import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/placelist_model.dart';

class PlaceList extends StatelessWidget {
  final PlaceListModel data;
  const PlaceList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(35, 5, 15, 5),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: AppColors.primaryWhiteColor,
            boxShadow: [
              AppColors.praimaryPlaceListBoxShadow,
            ],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(90.0, 0.0, 0.0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      data.countryName!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Mulish',
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      unratedColor: Colors.grey,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 16,
                          width: 16,
                          child: Image.asset(
                            "assets/icons/takeoff-the-plane.png",
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${data.placeName} - ',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              TextSpan(
                                text: '${data.month}, ${data.year}',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 14,
                          width: 14,
                          child: Image.asset(
                            "assets/icons/label.png",
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              data.seat.toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Seats remaining",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mulish',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Positioned(
                        child: Column(
                          children: [
                            Container(
                              width: 66,
                              height: 18,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(5)),
                                  color: data.color),
                              child: Center(
                                child: Text(
                                  data.category!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: data.fontColor,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, bottom: 15),
                        child: Column(
                          children: [
                            Text(
                              "\$${data.totalmoney}",
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mulish',
                                  fontSize: 13),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$${data.discountMoney}",
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Mulish',
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 15,
          bottom: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 96,
              child: Image.network(
                data.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
