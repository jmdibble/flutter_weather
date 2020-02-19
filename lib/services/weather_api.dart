import 'dart:convert';

import 'package:weather_api/models/weather_response.dart';
import 'package:http/http.dart' as http;

class WeatherApi {
  static Future<WeatherResponse> getWeather() async {
    final response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?q=London&appid=562d0bc8f488b56a25c443851977b39a');
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response, then parse the JSON.
      return WeatherResponse.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response, then throw an exception.
      throw Exception('Failed to load post');
    }
  }
}
