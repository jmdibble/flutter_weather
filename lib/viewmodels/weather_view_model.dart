import 'package:flutter/material.dart';
import 'package:weather_api/models/weather_response.dart';
import 'package:weather_api/services/weather_api.dart';

class WeatherViewModel extends ChangeNotifier {
  WeatherResponse weatherResponse;

  WeatherViewModel() {
    fetchWeather("london");
  }

  Future<void> fetchWeather(String city) async {
    weatherResponse = await WeatherApi.getWeather(city: city);
    notifyListeners();
  }
}
