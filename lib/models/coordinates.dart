class Coordinates {
  double lon;
  double lat;

  Coordinates({this.lon, this.lat});

  static Coordinates fromJson(Map<String, dynamic> json) {
    return Coordinates(lon: json["lon"], lat: json["lat"]);
  }
}
