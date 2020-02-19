import 'package:flutter/material.dart';
import 'package:weather_api/models/weather_response.dart';
import 'package:weather_api/services/weather_api.dart';

class MainInfoModel extends ChangeNotifier {
  WeatherResponse weatherResponse;

  MainInfoModel() {
    fetchWeather();
  }

  Future<void> fetchWeather() async {
    weatherResponse = await WeatherApi.getWeather();
    notifyListeners();
  }
}
