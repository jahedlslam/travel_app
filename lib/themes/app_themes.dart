import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_color.dart';

class AppThemes {
  static ThemeData defaultTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    ),
    scaffoldBackgroundColor: AppColors.primaryWhiteColor,
    fontFamily: 'Mulish',
    iconTheme: IconThemeData(
      color: AppColors.primaryGrayColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.secondaryBlackColor,
      selectedItemColor: AppColors.primaryWhiteColor,
      unselectedItemColor: AppColors.primaryGrayColor,
      unselectedIconTheme: IconThemeData(color: AppColors.primaryGrayColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.all(15),
        textStyle: const TextStyle(
          fontFamily: 'Mulish',
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 5,
      shape: const BeveledRectangleBorder(),
      backgroundColor: AppColors.secondaryBlackColor,
    ),
    dividerColor: AppColors.primaryGrayColor,
    dividerTheme: const DividerThemeData(thickness: 1),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.primaryColor,
      labelStyle: const TextStyle(
          fontFamily: 'Mulish',
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w800),
      unselectedLabelStyle: const TextStyle(
          fontFamily: 'Muli',
          color: Colors.grey,
          fontSize: 22,
          fontWeight: FontWeight.w600),
      unselectedLabelColor: AppColors.primaryWhiteColor,
      indicatorColor: AppColors.primaryGrayColor,
    ),
  );
}
