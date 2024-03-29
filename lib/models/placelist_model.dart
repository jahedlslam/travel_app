import 'package:flutter/material.dart';

class PlaceListModel {
  String? image;
  String? countryName;
  String? placeName;
  String? month;
  int? date;
  int? year;
  int? seat;
  int? totalmoney;
  int? discountMoney;
  String? category;
  Color? color;
  Color? fontColor;
  PlaceListModel(
      {this.image,
      this.countryName,
      this.placeName,
      this.month,
      this.date,
      this.year,
      this.seat,
      this.totalmoney,
      this.discountMoney,
      this.category,
      this.color,
      this.fontColor});
}

List<PlaceListModel> placeList = [
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
          "https://images.unsplash.com/photo-1593031376239-a2551cc09c3e?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      countryName: "Afganistan",
      placeName: "Kabul",
      month: "March",
      date: 18,
      year: 2024,
      seat: 12,
      totalmoney: 800,
      discountMoney: 650,
      category: "Standard",
      color: Colors.blue.shade100,
      fontColor: Colors.blue),
];
