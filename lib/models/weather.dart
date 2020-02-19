class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather({this.id, this.main, this.description, this.icon});

  static Weather fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json["id"],
      main: json["main"],
      description: json["description"],
      icon: json["icon"],
    );
  }

  static List<Weather> listFromJson(List<dynamic> json) {
    return json.map(
      (value) {
        return Weather.fromJson(value);
      },
    ).toList();
  }
}
