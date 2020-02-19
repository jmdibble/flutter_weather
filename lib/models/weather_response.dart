import 'package:weather_api/models/coordinates.dart';
import 'package:weather_api/models/main_info.dart';
import 'package:weather_api/models/weather.dart';

class WeatherResponse {
  Coordinates coord;
  List<Weather> weather;
  Main main;

  WeatherResponse({this.coord, this.weather, this.main});

  static WeatherResponse fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      coord: Coordinates.fromJson(json["coord"]),
      weather: Weather.listFromJson(json["weather"]),
      main: Main.fromJson(json["main"]),
    );
  }

  // "coord": {
  //     "lon": -0.13,
  //     "lat": 51.51
  // },
  // "weather": [
  //     {
  //         "id": 804,
  //         "main": "Clouds",
  //         "description": "overcast clouds",
  //         "icon": "04d"
  //     }
  // ],
  // "base": "stations",
  // "main": {
  //     "temp": 281.52,
  //     "feels_like": 275.72,
  //     "temp_min": 280.15,
  //     "temp_max": 282.59,
  //     "pressure": 1020,
  //     "humidity": 70
  // },
  // "visibility": 10000,
  // "wind": {
  //     "speed": 6.2,
  //     "deg": 230
  // },
  // "clouds": {
  //     "all": 87
  // },
  // "dt": 1582024046,
  // "sys": {
  //     "type": 1,
  //     "id": 1414,
  //     "country": "GB",
  //     "sunrise": 1582009803,
  //     "sunset": 1582046355
  // },
  // "timezone": 0,
  // "id": 2643743,
  // "name": "London",
  // "cod": 200
}
