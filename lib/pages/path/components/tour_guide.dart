import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class TourGuide extends StatelessWidget {
  const TourGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tour guide",
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
                      "https://images.unsplash.com/photo-1582897141885-f55b79b0483e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2luZ2Fwb3JlJTIwYnVpbGRpbmd8ZW58MHx8MHx8fDA%3D",
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
                      "LE QUANG MINH",
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w800,
                          fontSize: 14),
                    ),
                    Text(
                      "190 Pasteur, Ward 6, District 3,\nHCM City, Viet Nam",
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w800,
                          fontSize: 12),
                    ),
                    Text(
                      "(+84) 907 611 666",
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
