import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weather_api/models/weather_response.dart';
import 'package:weather_api/viewmodels/weather_model.dart';
import 'package:weather_api/viewmodels/main_info_model.dart';

class TenDay extends StatelessWidget {
  String tenDayText;

  TenDay(this.tenDayText);

  @override
  Widget build(BuildContext context) {
    final weatherModel = Provider.of<WeatherModel>(context);
    // final mainModel = Provider.of<MainInfoModel>(context);
    if (weatherModel.weatherResponse == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    WeatherResponse model = weatherModel.weatherResponse;
    return Container(
        child: Column(
      children: <Widget>[
        Text("${model.coord.lat}"),
        Text("${model.coord.lon}"),
        Text("${model.weather[0].main}"),
        Text("${model.weather[0].description}"),
        Text("${model.main.temp - 273.15}C")
      ],
    ));
  }
}
