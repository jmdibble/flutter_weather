class Main {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int pressure;
  int humidity;

  Main(
      {this.temp,
      this.feels_like,
      this.temp_min,
      this.temp_max,
      this.pressure,
      this.humidity});

  static Main fromJson(Map<String, dynamic> json) {
    return Main(
        temp: json["temp"],
        feels_like: json["feels_like"],
        temp_min: json["temp_min"],
        temp_max: json["temp_max"],
        pressure: json["pressure"],
        humidity: json["humidity"]);
  }
}

//       "temp": 281.52,
//     "feels_like": 275.72,
//     "temp_min": 280.15,
//     "temp_max": 282.59,
//     "pressure": 1020,
//     "humidity": 70
