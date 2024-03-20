import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Colors.black;
  static Color primaryWhiteColor = Colors.white;
  static Color primaryGrayColor = Colors.grey;
  static Color secondaryGrayColor200 = Colors.grey.shade200;
  static Color secondaryGrayColor = Colors.grey.shade300;
  static Color secondaryGrayColor400 = Colors.grey.shade400;
  static Color secondaryGrayColor500 = Colors.grey.shade500;
  static Color secondaryGrayColor600 = Colors.grey.shade600;
  static Color primaryWhiteColor60 = Colors.white60;
  static Color secondaryGrayColor800 = Colors.grey.shade800;
  static Color secondaryBlackColor = Colors.black87;

  static LinearGradient primarGradientColor = LinearGradient(
    begin: Alignment.bottomRight,
    stops: const [0.1, 0.9],
    colors: [
      Colors.black.withOpacity(0.9),
      Colors.black.withOpacity(0.2),
    ],
  );
  static LinearGradient secondaryGradientColor = LinearGradient(
    begin: Alignment.bottomRight,
    stops: const [0.1, 0.9],
    colors: [
      Colors.black.withOpacity(0.8),
      Colors.black.withOpacity(0.1),
    ],
  );
  static LinearGradient secondaryIndicatorGradient = LinearGradient(
    begin: Alignment.bottomRight,
    stops: const [0.1, 0.9],
    colors: [
      Colors.black.withOpacity(0.9),
      Colors.black.withOpacity(0.5),
    ],
  );
  static LinearGradient secondaryDestinationGradient = LinearGradient(
    begin: Alignment.bottomRight,
    stops: const [0.1, 0.5],
    colors: [
      Colors.black.withOpacity(0.4),
      Colors.black.withOpacity(0.3),
    ],
  );
  static LinearGradient secondaryIndicatorImageGradient = LinearGradient(
    begin: Alignment.bottomRight,
    stops: const [0.1, 0.5],
    colors: [
      Colors.black.withOpacity(0.4),
      Colors.black.withOpacity(0.4),
    ],
  );
  static BoxShadow praimaryNotificationBoxShadow = const BoxShadow(
      color: Colors.grey,
      offset: Offset(-3, 3),
      blurRadius: 10,
      spreadRadius: 5);
  static BoxShadow praimaryBoxShadow = const BoxShadow(
    offset: Offset(-7, 9),
    blurRadius: 5,
    spreadRadius: 1,
    color: Colors.grey,
  );
  static BoxShadow praimaryMenuIconBoxShadow = const BoxShadow(
    color: Colors.black26,
    blurRadius: 5,
  );
  static BoxShadow praimaryPlaceListBoxShadow = const BoxShadow(
    offset: Offset(-1, 8),
    blurRadius: 10,
    spreadRadius: 1,
    color: Colors.grey,
  );
  static BoxShadow praimaryCardBoxShadow = const BoxShadow(
    color: Colors.white,
    offset: Offset(-1, 1),
    blurRadius: 1,
    spreadRadius: 1,
  );
  static BoxShadow praimaryTriplistBoxShadow = const BoxShadow(
      color: Colors.grey,
      offset: Offset(-2, 2),
      blurRadius: 5,
      spreadRadius: 1);
}
