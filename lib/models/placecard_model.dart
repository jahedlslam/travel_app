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
    required this.totalmoney,
    required this.discountMoney,
  });
}

List<PlaceCardModel> placeCardlist = [
  PlaceCardModel(
      bgImage:
          "https://images.unsplash.com/photo-1598984153806-9fb1b18a7f88?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8",
      days: 06,
      hours: 16,
      countryName: "Singapure",
      placeName: "Hanoi",
      month: "May",
      date: 20,
      year: 2019,
      seat: "02/12",
      totalmoney: 920,
      discountMoney: 770),
  PlaceCardModel(
      bgImage:
          "https://images.unsplash.com/photo-1597659840241-37e2b9c2f55f?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      days: 05,
      hours: 12,
      countryName: "Dubai",
      placeName: "Abu Dhabi",
      month: "July",
      date: 10,
      year: 2024,
      seat: "03/12",
      totalmoney: 1200,
      discountMoney: 960),
  PlaceCardModel(
      bgImage:
          "https://images.unsplash.com/photo-1666554161124-0c39e748b455?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGthYnVsJTIwYWZnaGFuaXN0YW58ZW58MHx8MHx8fDA%3D",
      days: 06,
      hours: 16,
      countryName: "Afganistan",
      placeName: "Kabul",
      month: "march",
      date: 18,
      year: 2024,
      seat: "08/12",
      totalmoney: 800,
      discountMoney: 650),
];
