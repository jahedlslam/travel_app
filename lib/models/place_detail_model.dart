class PlaceDetailModel {
  final String bgUrl;
  final String countryName;
  final int review;
  final String placeName;
  final String month;
  final int date;
  final int year;
  final String caption;
  final int price;
  PlaceDetailModel({
    required this.bgUrl,
    required this.countryName,
    required this.review,
    required this.placeName,
    required this.month,
    required this.date,
    required this.year,
    required this.caption,
    required this.price,
  });
}

List<PlaceDetailModel> placeDetail = [
  PlaceDetailModel(
    bgUrl:
        "https://images.unsplash.com/photo-1569288063643-5d29ad64df09?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    countryName: "Singapore",
    review: 4120,
    placeName: "Marina Bay Sands",
    month: "May",
    date: 20,
    year: 2024,
    caption:
        "The Ionian Islands are splendid, cinematic paradise. The waters are bluest blue, the sands are achingly silky and smooth.",
    price: 920,
  ),
  PlaceDetailModel(
    bgUrl:
        "https://images.unsplash.com/photo-1508964942454-1a56651d54ac?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    countryName: "Singapore",
    review: 4520,
    placeName: "Garden",
    month: "July",
    date: 24,
    year: 2024,
    caption:
        "The Ionian Islands are splendid, cinematic paradise. The waters are bluest blue, the sands are achingly silky and smooth.",
    price: 880,
  ),
  PlaceDetailModel(
    bgUrl:
        "https://images.unsplash.com/photo-1581863575451-b8ba94788958?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    countryName: "Singapore",
    review: 5431,
    placeName: "Universal Studios",
    month: "April",
    date: 18,
    year: 2024,
    caption:
        "The Ionian Islands are splendid, cinematic paradise. The waters are bluest blue, the sands are achingly silky and smooth.",
    price: 750,
  ),
];
//  PlaceDetailModel(
//       bgUrl:
//           "https://images.unsplash.com/photo-1546412414-e1885259563a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZHViYWl8ZW58MHx8MHx8fDA%3D",
//       countryName: "Dubai",
//       review: 5495,
//       placeName: "Abu Dhabi",
//       month: "July",
//       date: 10,
//       year: 2024,
//       caption:
//           "The Ionian Islands are splendid, cinematic paradise. The waters are bluest blue, the sands are achingly silky and smooth.",
//       price: 960),
//   PlaceDetailModel(
//       bgUrl:
//           "https://images.unsplash.com/photo-1593031376239-a2551cc09c3e?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//       countryName: "Afganistan",
//       review: 3212,
//       placeName: "Kabul",
//       month: "March",
//       date: 18,
//       year: 2024,
//       caption:
//           "The Ionian Islands are splendid, cinematic paradise. The waters are bluest blue, the sands are achingly silky and smooth.",
//       price: 650),