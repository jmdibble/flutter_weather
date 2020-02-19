import 'package:flutter/material.dart';
import 'package:weather_api/models/weather_response.dart';
import 'package:weather_api/services/weather_api.dart';

class WeatherModel extends ChangeNotifier {
  WeatherResponse weatherResponse;

  WeatherModel() {
    fetchWeather();
  }

  Future<void> fetchWeather() async {
    weatherResponse = await WeatherApi.getWeather();
    notifyListeners();
  }
}
