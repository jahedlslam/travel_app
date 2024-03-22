import 'package:flutter/material.dart';
import 'package:travel_app/pages/timeline/components/timeline_list.dart';

class TimeAndCaption extends StatelessWidget {
  const TimeAndCaption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TimelineList(
          hour: "06",
          min: "00",
          caption:
              "CAPI's guide picks you up at the meeting point of Noi Bai airport for a flight to Nagota.",
        ),
        TimelineList(
          hour: "09",
          min: "30",
          caption:
              "Local car and guide pick up the delegation and take you to eat noon After that, the group returned to check in at a 4-star hotel.",
        ),
        TimelineList(
          hour: "12",
          min: "30",
          caption:
              "Freetime \nPeople can go shopping, visit places near the hotel.",
        ),
        TimelineList(
          hour: "19",
          min: "30",
          caption:
              "In the evening, after having dinner, the car will take you to enjoy the art performance Siam Niramit.",
        ),
        TimelineList(
          hour: "21",
          min: "15",
          caption: "After the show, you return to the hotel to rest.",
        ),
      ],
    );
  }
}
