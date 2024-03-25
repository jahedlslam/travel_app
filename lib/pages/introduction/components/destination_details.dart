import 'package:flutter/material.dart';
import 'package:travel_app/pages/information/components/destination.dart';
import 'package:travel_app/pages/timeline/timeline.dart';

class DestinationDetails extends StatefulWidget {
  const DestinationDetails({super.key});

  @override
  State<DestinationDetails> createState() => _DestinationDetailsState();
}

class _DestinationDetailsState extends State<DestinationDetails> {
  void _timeline() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (context) {
          return const TimeLine();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10),
          child: Text(
            "Destination",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 150,
          width: 400,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: _timeline,
                child: const Padding(
                  padding: EdgeInsets.only(left: 25, right: 25.0),
                  child: Destination(
                    imageUrl:
                        "https://images.unsplash.com/photo-1560874047-8bc5a624784c?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    date: "May 20",
                    placeName: "Ha Noi ",
                    location: " Nogata",
                  ),
                ),
              ),
              GestureDetector(
                onTap: _timeline,
                child: const Padding(
                  padding: EdgeInsets.only(right: 25.0),
                  child: Destination(
                    imageUrl:
                        "https://images.unsplash.com/photo-1560874047-8bc5a624784c?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    date: "May 21",
                    placeName: "Ha Noi ",
                    location: " Nogata",
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
