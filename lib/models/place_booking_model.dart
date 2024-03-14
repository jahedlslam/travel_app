import 'package:flutter/material.dart';

class PlaceBookingModel {
  final String topImageUrl;
  final String countryName;
  final String category;
  final Color color;
  final Color fontColor;
  final int totalday;
  final int firstDay;
  final int lastDay;
  final String month;
  final int year;
  final String seat;
  final int discountMoney;
  PlaceBookingModel({
    required this.topImageUrl,
    required this.countryName,
    required this.category,
    required this.color,
    required this.fontColor,
    required this.totalday,
    required this.firstDay,
    required this.lastDay,
    required this.month,
    required this.year,
    required this.seat,
    required this.discountMoney,
  });
}

List<PlaceBookingModel> placebooking = [
  PlaceBookingModel(
      topImageUrl:
          "https://images.unsplash.com/flagged/photo-1562503542-2a1e6f03b16b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      countryName: "Singapore",
      category: "Standard",
      color: Colors.blue.shade100,
      fontColor: Colors.blue,
      totalday: 3,
      firstDay: 20,
      lastDay: 22,
      month: 'March',
      year: 2024,
      seat: "14/16",
      discountMoney: 770),
  PlaceBookingModel(
      topImageUrl:
          "https://images.unsplash.com/photo-1546412414-e1885259563a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZHViYWl8ZW58MHx8MHx8fDA%3D",
      countryName: "Dubai",
      category: "Luxury",
      color: Colors.orange.shade100,
      fontColor: Colors.orange,
      totalday: 5,
      firstDay: 25,
      lastDay: 28,
      month: 'March',
      year: 2024,
      seat: "8/16",
      discountMoney: 800),
  PlaceBookingModel(
      topImageUrl:
          "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      countryName: "Afganistan",
      category: "Standard",
      color: Colors.blue.shade100,
      fontColor: Colors.blue,
      totalday: 3,
      firstDay: 23,
      lastDay: 25,
      month: 'March',
      year: 2024,
      seat: "12/16",
      discountMoney: 650),
];
