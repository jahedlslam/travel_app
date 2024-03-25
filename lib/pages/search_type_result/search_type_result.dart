import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/placelist_model.dart';
import 'package:travel_app/pages/place_list/place_list.dart';
import '../dialog_box/dialog_box.dart';

class SearchTypeResult extends StatefulWidget {
  const SearchTypeResult({super.key});

  @override
  State<SearchTypeResult> createState() => _SearchTypeResultState();
}

class _SearchTypeResultState extends State<SearchTypeResult> {
  void showFilter() {
    showDialog(
        context: context,
        builder: (context) {
          return const DialogBox();
        });
  }

  static List<PlaceListModel> placeList = [
    PlaceListModel(
        image:
            "https://images.unsplash.com/photo-1546412414-e1885259563a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZHViYWl8ZW58MHx8MHx8fDA%3D",
        countryName: "Dubai",
        placeName: "Abu Dhabi",
        month: "July",
        date: 10,
        year: 2024,
        seat: 12,
        totalmoney: 1200,
        discountMoney: 960,
        category: "Luxury",
        color: Colors.orange.shade100,
        fontColor: Colors.orange),
    PlaceListModel(
        image:
            "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        countryName: "Singapore",
        placeName: "Toa payoh",
        month: "May",
        date: 20,
        year: 2019,
        seat: 12,
        totalmoney: 920,
        discountMoney: 770,
        category: "Standard",
        color: Colors.blue.shade100,
        fontColor: Colors.blue),
    PlaceListModel(
        image:
            "https://images.unsplash.com/photo-1593031376239-a2551cc09c3e?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        countryName: "Afganistan",
        placeName: "Kabul",
        month: "March",
        date: 18,
        year: 2024,
        seat: 12,
        totalmoney: 800,
        discountMoney: 650,
        category: "Saving",
        color: Colors.green.shade100,
        fontColor: Colors.green),
    PlaceListModel(
        image:
            "https://images.unsplash.com/photo-1531737212413-667205e1cda7?q=80&w=1334&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        countryName: "Vietnam",
        placeName: "NinhBình",
        month: "March",
        date: 18,
        year: 2024,
        seat: 12,
        totalmoney: 800,
        discountMoney: 650,
        category: "Standard",
        color: Colors.blue.shade100,
        fontColor: Colors.blue),
    PlaceListModel(
        image:
            "https://images.unsplash.com/photo-1492571350019-22de08371fd3?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGphcGFufGVufDB8fDB8fHww",
        countryName: "Japan",
        placeName: "Hakone",
        month: "March",
        date: 18,
        year: 2024,
        seat: 12,
        totalmoney: 800,
        discountMoney: 650,
        category: "Saving",
        color: Colors.green.shade100,
        fontColor: Colors.green),
    PlaceListModel(
        image:
            "https://plus.unsplash.com/premium_photo-1661961684509-e7a64267efcd?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        countryName: "Italy",
        placeName: "Piazzadel",
        month: "March",
        date: 18,
        year: 2024,
        seat: 12,
        totalmoney: 800,
        discountMoney: 650,
        category: "Lusury",
        color: Colors.orange.shade100,
        fontColor: Colors.orange),
  ];
  List<PlaceListModel> displayList = List.from(placeList);
  void updateList(String value) {
    setState(() {
      displayList = placeList
          .where((element) =>
              element.placeName!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 1250,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.secondaryGrayColor800,
                      size: 30,
                    ),
                  ),
                ),
                const Positioned(
                  top: 90,
                  left: 30,
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  right: 30,
                  left: 30,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryWhiteColor60,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      onChanged: (value) => updateList(value),
                      obscureText: false,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.secondaryGrayColor),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.secondaryGrayColor),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: AppColors.secondaryGrayColor200,
                        filled: true,
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: showFilter,
                          icon: Image.asset(
                            "assets/icons/filter.png",
                            color: Colors.grey.shade600,
                            width: 22,
                          ),
                        ),
                        hintText: 'Search for tour',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                            fontFamily: 'Mulish'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 30,
                  child: Text(
                    "320 results",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14,
                        fontFamily: 'Mulish'),
                  ),
                ),
                Positioned(
                  top: 270,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 1000,
                    width: double.infinity,
                    child: displayList.isEmpty
                        ? const Center(
                            child: Text(
                              "Now result found",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          )
                        : ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: displayList.length,
                            itemBuilder: (context, index) {
                              return PlaceList(data: placeList[index]);
                            },
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
