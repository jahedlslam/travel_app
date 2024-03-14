class PlaceCardModel {
  final String bgImage;
  final int days;
  final int hours;
  final String countryName;
  final String placeName;
  final String month;
  final int date;
  final int year;
  final String seat;
  final String discount;
  final int totalmoney;
  final int discountMoney;
  PlaceCardModel({
    required this.bgImage,
    required this.days,
    required this.hours,
    required this.countryName,
    required this.placeName,
    required this.month,
    required this.date,
    required this.year,
    required this.seat,
    required this.discount,
    required this.totalmoney,
    required this.discountMoney,
  });
}

List<PlaceCardModel> placeCard = [
  PlaceCardModel(
      bgImage:
          "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      days: 06,
      hours: 16,
      countryName: "Singapore",
      placeName: "Toa payoh",
      month: "May",
      date: 20,
      year: 2019,
      seat: "02/12",
      discount: "-20%",
      totalmoney: 920,
      discountMoney: 770),
  PlaceCardModel(
      bgImage:
          "https://images.unsplash.com/photo-1546412414-e1885259563a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZHViYWl8ZW58MHx8MHx8fDA%3D",
      days: 05,
      hours: 12,
      countryName: "Dubai",
      placeName: "Abu Dhabi",
      month: "July",
      date: 10,
      year: 2024,
      seat: "03/12",
      discount: "-15%",
      totalmoney: 1200,
      discountMoney: 960),
  PlaceCardModel(
      bgImage:
          "https://images.unsplash.com/photo-1593031376239-a2551cc09c3e?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      days: 06,
      hours: 16,
      countryName: "Afganistan",
      placeName: "Kabul",
      month: "March",
      date: 18,
      year: 2024,
      seat: "08/12",
      discount: "-20%",
      totalmoney: 800,
      discountMoney: 650),
];
