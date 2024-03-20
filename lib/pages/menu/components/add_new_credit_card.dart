import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';

class AddnewCreditCard extends StatelessWidget {
  const AddnewCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        shape: const BeveledRectangleBorder(),
        backgroundColor: AppColors.secondaryBlackColor,
        onPressed: () {
          Navigator.pop(context);
        },
        label: const SizedBox(
          height: 46,
          width: 310,
          child: Center(
            child: Text(
              "NEXT",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish'),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 600,
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
                    color: AppColors.secondaryGrayColor800,
                    size: 30,
                  ),
                ),
              ),
              const Positioned(
                top: 100,
                left: 30,
                child: Text(
                  "Add new card",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Mulish',
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 200,
                right: 30,
                left: 30,
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      width: 327,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryGrayColor800,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 10,
                      child: Image.asset(
                        "assets/icons/money.png",
                        width: 60,
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 20,
                      right: 20,
                      child: Container(
                        height: 41,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryGrayColor800,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            AppColors.praimaryCardBoxShadow,
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "4829 0921 8393 6666",
                            style: TextStyle(
                              fontFamily: 'KodeMono',
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      right: 30,
                      left: 30,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CARDHOLDER NAME",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "CAPI CREATIVE",
                                    style: TextStyle(
                                        fontFamily: 'KodeMono',
                                        color: Colors.white,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "VALID THRU",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "03/2024",
                                    style: TextStyle(
                                        fontFamily: 'KodeMono',
                                        color: Colors.white,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 400,
                right: 30,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Type in your card details:",
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
                      height: 40,
                      width: 340,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryGrayColor400,
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
                            borderSide: BorderSide(
                                color: AppColors.secondaryGrayColor500),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: AppColors.primaryWhiteColor60,
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'Number',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade600,
                              fontFamily: 'Mulish'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 340,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryGrayColor400,
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
                            borderSide: BorderSide(
                                color: AppColors.secondaryGrayColor500),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: AppColors.secondaryGrayColor,
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'CARDHOLDER NAME',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade600,
                              fontFamily: 'Mulish'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 340,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryGrayColor400,
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
                            borderSide: BorderSide(
                                color: AppColors.secondaryGrayColor500),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: AppColors.primaryWhiteColor60,
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'VALID THRU',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade600,
                              fontFamily: 'Mulish'),
                        ),
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
