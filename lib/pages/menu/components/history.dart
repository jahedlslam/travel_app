import 'package:flutter/material.dart';
import 'package:travel_app/models/placelist_model.dart';
import 'package:travel_app/pages/home/components/place_list.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 1000,
          child: Stack(
            children: [
              Positioned(
                top: 40,
                left: 20,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey.shade800,
                    size: 30,
                  ),
                ),
              ),
              const Positioned(
                top: 100,
                left: 30,
                child: Text(
                  "History",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Mulish',
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 170,
                left: 30,
                right: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search_outlined,
                            size: 20,
                            color: Colors.grey.shade600,
                          ),
                          hintText: 'Search for place',
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                              fontFamily: 'Mulish'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 230,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30, bottom: 10),
                      child: Text(
                        "Waiting for confirmation",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mulish'),
                      ),
                    ),
                    PlaceList(
                      data: placeList[0],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 460,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30, bottom: 10),
                      child: Text(
                        "History booking",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mulish'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: PlaceList(
                        data: placeList[1],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: PlaceList(
                        data: placeList[2],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: PlaceList(
                        data: placeList[0],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
