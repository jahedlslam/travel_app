import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';
import 'package:travel_app/pages/menu/components/dialog_box.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  void showFilter() {
    showDialog(
        context: context,
        builder: (context) {
          return const DialogBox();
        });
  }

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
              top: 250,
              right: 20,
              left: 20,
              child: SizedBox(
                height: 70,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 28,
                            width: 77,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.secondaryGrayColor200),
                            child: Center(
                              child: Text(
                                "Singapore",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 14,
                                    fontFamily: 'Mulish'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 28,
                            width: 77,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.secondaryGrayColor200),
                            child: Center(
                              child: Text(
                                "Japan",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 14,
                                    fontFamily: 'Mulish'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 28,
                            width: 77,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.grey.shade200),
                            child: Center(
                              child: Text(
                                "Island",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 14,
                                    fontFamily: 'Mulish'),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 28,
                          width: 77,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColors.secondaryGrayColor200),
                          child: Center(
                            child: Text(
                              "Beach",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 14,
                                  fontFamily: 'Mulish'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 28,
                            width: 77,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.secondaryGrayColor200),
                            child: Center(
                              child: Text(
                                "Afganistan",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 14,
                                    fontFamily: 'Mulish'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            height: 28,
                            width: 77,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.secondaryGrayColor200),
                            child: Center(
                              child: Text(
                                "Thailend",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 14,
                                    fontFamily: 'Mulish'),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 28,
                          width: 77,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColors.secondaryGrayColor200),
                          child: Center(
                            child: Text(
                              "Dubai",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 14,
                                  fontFamily: 'Mulish'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 345,
              right: 0,
              left: 0,
              child: Divider(
                thickness: 2,
                color: AppColors.secondaryGrayColor,
              ),
            ),
            Positioned(
              top: 370,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recent",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Mulish',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/time.png",
                          color: Colors.grey.shade500,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Dubai",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 16,
                              fontFamily: 'Mulish'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/time.png",
                          color: Colors.grey.shade500,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Singapore",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 16,
                              fontFamily: 'Mulish'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/time.png",
                          color: Colors.grey.shade500,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Afganistan",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 16,
                              fontFamily: 'Mulish'),
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
    );
  }
}
