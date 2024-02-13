class SportsModel {
  final String title;
  final String discretion;
  final String time;
  final String image;

  SportsModel(
      {required this.title,
      required this.discretion,
      required this.time,
      required this.image});

  factory SportsModel.fromJson(Map json) {
    return SportsModel(
      title: json["title"],
      discretion: json["description"],
      time: json["time"],
      image: json["image"],
    );
  }

  toMap() {
    return {
      "title": title,
      "discretion": discretion,
      "time": time,
      "image": image
    };
  }
}
