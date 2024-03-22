import 'package:flutter/material.dart';
import 'package:travel_app/pages/notification/components/notifi_caption.dart';

class AllNotifications extends StatelessWidget {
  const AllNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 1100,
      child: Column(
        children: [
          NotificationCaptions(
              image:
                  "https://images.unsplash.com/flagged/photo-1559717865-a99cac1c95d8?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZHViYWl8ZW58MHx8MHx8fDA%3D",
              title: "Book a successful tour!",
              subtitle:
                  "Congratulations!\nYou have booked Dubai tour successfully.",
              time: "2 mins"),
          NotificationCaptions(
              image:
                  "https://images.unsplash.com/photo-1709433157272-18e3517fb36a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8",
              title: "Book a successful tour!",
              subtitle:
                  "Congratulations!\nYou have successfully booked a trip.",
              time: "2 days"),
          NotificationCaptions(
              image:
                  "https://images.unsplash.com/photo-1708923262250-09c61f1bb6a7?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NHx8fGVufDB8fHx8fA%3D%3D",
              title: "Tour booking failed!",
              subtitle:
                  "Lorem Ipsum is simply dummy text\nof the printing and typesetting.",
              time: "July 20"),
          NotificationCaptions(
              image:
                  "https://images.unsplash.com/photo-1694128718125-9a7abedaf202?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8",
              title: "Payment success!",
              subtitle: "Successfully paid for the tour!",
              time: "July 20"),
          NotificationCaptions(
              image:
                  "https://images.unsplash.com/photo-1709439377248-d03a69358c75?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2M3x8fGVufDB8fHx8fA%3D%3D",
              title: "Book a successful tour!",
              subtitle:
                  "Congratulations!\nYou have successfully booked a trip.",
              time: "July 23"),
          NotificationCaptions(
              image:
                  "https://images.unsplash.com/photo-1514924013411-cbf25faa35bb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNpdHl8ZW58MHx8MHx8fDA%3D",
              title: "Payment success!",
              subtitle: "Successfully paid for the tour!",
              time: "July 20"),
          NotificationCaptions(
              image:
                  "https://images.unsplash.com/photo-1568402102990-bc541580b59f?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              title: "Book a successful tour!",
              subtitle:
                  "Congratulations!\nYou have successfully booked a trip.",
              time: "July 23"),
        ],
      ),
    );
  }
}
