import 'package:flutter/material.dart';
import 'package:travel_app/pages/review/components/customer_profile_pic.dart';
import 'package:travel_app/pages/review/components/customer_review_rating.dart';
import 'package:travel_app/pages/review/components/customers_review.dart';
import 'package:travel_app/pages/review/components/review_box.dart';
import 'package:travel_app/pages/review/components/your_profile.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ReviewBox(),
        Positioned(
          left: 30,
          top: 60,
          child: YourProfile(),
        ),
        Positioned(
          top: 270,
          left: 30,
          child: CustomersReview(),
        ),
        Positioned(
          top: 310,
          left: 0,
          right: 0,
          child: CustomerReviewRating(
              name: "Leo Gill",
              comment: "Good service, dedicated guide!",
              time: "5 mins"),
        ),
        Positioned(
          left: 30,
          top: 365,
          child: CustomerProfilePic(
            profile:
                "https://plus.unsplash.com/premium_photo-1689977871600-e755257fb5f8?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fHByb2ZpbGUlMjBwaWN0dXJlJTIwbWFsZXxlbnwwfHwwfHx8MA%3D%3D",
          ),
        ),
        Positioned(
          top: 430,
          left: 0,
          right: 0,
          child: CustomerReviewRating(
              name: "Elliana Palacios",
              comment: "I am very happy with this tour.\nService is excellent!",
              time: "1 hours"),
        ),
        Positioned(
          left: 30,
          top: 485,
          child: CustomerProfilePic(
            profile:
                "https://plus.unsplash.com/premium_photo-1688350808212-4e6908a03925?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ),
        ),
        Positioned(
          top: 550,
          left: 0,
          right: 0,
          child: CustomerReviewRating(
              name: "Leo Gill",
              comment: "Good service, dedicated guide!",
              time: "2 hours"),
        ),
        Positioned(
          left: 30,
          top: 605,
          child: CustomerProfilePic(
            profile:
                "https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fGFmcmljYSUyMG1hbGUlMjBwcm9maWxlJTIwYmxhY2t8ZW58MHx8MHx8fDA%3D",
          ),
        ),
      ],
    );
  }
}
