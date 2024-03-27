import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../constants/app_color.dart';

class HotelInfo extends StatelessWidget {
  const HotelInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hotel",
          style: TextStyle(
              fontFamily: 'Mulish',
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w800,
              fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: 109,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryWhiteColor,
            boxShadow: [AppColors.praimaryMenuIconBoxShadow],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: SizedBox(
                  width: 100,
                  height: 83,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://plus.unsplash.com/premium_photo-1675745329659-29044cb6adbb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c3dpbW1pbmclMjBwb29sfGVufDB8fDB8fHww",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 83,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Marina Bay Sands Hotel,\nSingapore",
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w800,
                          fontSize: 14),
                    ),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 12,
                      unratedColor: AppColors.primaryGrayColor,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    Text(
                      "3-1-24 10/Bayfront Ave,\nSingapore 018956",
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w800,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
