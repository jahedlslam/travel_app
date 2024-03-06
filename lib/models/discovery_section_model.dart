class DiscoverySectionModel {
  final String imageUrl;
  final String destinationName;
  final int placeCount;
  DiscoverySectionModel(
      {required this.imageUrl,
      required this.destinationName,
      required this.placeCount});
}

List<DiscoverySectionModel> discoverySection = [
  DiscoverySectionModel(
      imageUrl:
          "https://images.unsplash.com/photo-1534960695591-5904eba555e6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGFzaWElMjBjaXR5fGVufDB8fDB8fHww",
      destinationName: "Asia",
      placeCount: 2000),
  DiscoverySectionModel(
      imageUrl:
          "https://images.unsplash.com/photo-1503410781609-75b1d892dd28?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGV1cm9wZXxlbnwwfHwwfHx8MA%3D%3D",
      destinationName: "Europe",
      placeCount: 900),
  DiscoverySectionModel(
      imageUrl:
          "https://images.unsplash.com/photo-1501466044931-62695aada8e9?q=80&w=1387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      destinationName: "America",
      placeCount: 1500),
];
