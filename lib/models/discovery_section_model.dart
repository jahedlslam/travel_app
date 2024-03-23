class DiscoverySectionModel {
  final String imageUrl;
  final String destinationName;
  final int placeCount;
  final String desc;
  DiscoverySectionModel(
      {required this.imageUrl,
      required this.destinationName,
      required this.placeCount,
      required this.desc});
}

List<DiscoverySectionModel> discoverySection = [
  DiscoverySectionModel(
      imageUrl:
          "https://images.unsplash.com/photo-1534960695591-5904eba555e6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGFzaWElMjBjaXR5fGVufDB8fDB8fHww",
      destinationName: "Asia",
      placeCount: 2000,
      desc:
          "Asia is the largest and most populous continent in the world. Asia also has many beautiful landscapes in some countries such as Korea, Japan, China, Vietnam, ... and Capi is the leading professional tourism organizer in Asia, 5 times connected. receive TTG Travel Awards. Join Capi in Asia to enjoy the best services."),
  DiscoverySectionModel(
      imageUrl:
          "https://images.unsplash.com/photo-1503410781609-75b1d892dd28?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGV1cm9wZXxlbnwwfHwwfHx8MA%3D%3D",
      destinationName: "Europe",
      placeCount: 900,
      desc:
          'Europe is the western peninsula of the giant "supercontinent" of Eurasia. Europe is divided from Asia by a series of watersheds, including the Ural River and the Caspian and Black Seas. Europe is the second-smallest continent.'),
  DiscoverySectionModel(
      imageUrl:
          "https://images.unsplash.com/photo-1501466044931-62695aada8e9?q=80&w=1387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      destinationName: "America",
      placeCount: 1500,
      desc:
          "The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC."),
];
