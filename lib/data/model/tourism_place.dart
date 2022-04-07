class TourismResult {
  TourismResult({
    required this.status,
    required this.totalResults,
    required this.tourismPlaceList,
  });

  String status;
  int totalResults;
  List<TourismPlace> tourismPlaceList;

  factory TourismResult.fromJson(Map<String, dynamic> json) => TourismResult(
    status: json["status"],
    totalResults: json["totalResults"],
    tourismPlaceList: List<TourismPlace>.from(
        json["tourismPlaceList"].map((x) => TourismPlace.fromJson(x))),
  );
}

class TourismPlace{
  String id;
  String name;
  String location;
  String imageAsset;
  String day;
  String time;
  String price;
  String description;
  List <String> listImages;

  TourismPlace({
    required this.id,
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.day,
    required this.time,
    required this.price,
    required this.description,
    required this.listImages,
  });

  factory TourismPlace.fromJson(Map<String, dynamic> json) => TourismPlace(
    id: json["id"],
    name: json["name"],
    location: json["location"],
    imageAsset: json["image"],
    description: json["description"],
    day: json["day"],
    time: json["time"],
    price: json["price"],
    listImages: List<String>.from(json["detail_images"].map((x) => x)),
  );
}
