import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/models/placelist_model.dart';
import 'package:travel_app/pages/home/components/place_list.dart';
import '../dialog_box/dialog_box.dart';

class SearchTypeResult extends StatefulWidget {
  //final PlaceListModel data;
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

  // List<Map<String, dynamic>> placeList = [

  // ];

  // List<Map<String, dynamic>> _foundUsers = [];
  // @override
  // void initState() {
  //   _foundUsers = placeList;
  //   super.initState();
  // }

  // void _runFilter(String enteredKeyword) {
  //   List<Map<String, dynamic>> results = [];
  //   if (enteredKeyword.isEmpty) {
  //     results = placeList;
  //   } else {
  //     results = placeList.where((user) => user["countryName"]
  //         .toLowercase()
  //         .contains(enteredKeyword.toLowerCase().toList()));
  //   }
  //   setState(() {
  //     _foundUsers = results;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  //onChanged: (value) => _runFilter(value),
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
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: placeList.length,
                  itemBuilder: (context, index) {
                    return PlaceList(data: placeList[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
