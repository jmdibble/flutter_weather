import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather_api/viewmodels/home_view_model.dart';
import 'package:weather_api/viewmodels/weather_view_model.dart';

class Autocomplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeModel = Provider.of<HomeViewModel>(context, listen: false);
    return Positioned(
      top: 85,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Material(
          elevation: 5.0,
          child: SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width - 32.0,
            child: ListView.builder(
              itemBuilder: (ctx, i) {
                return ListTile(
                  title: Text("${homeModel.matchingCities[i]}"),
                  onTap: () {
                    final weatherModel =
                        Provider.of<WeatherViewModel>(context, listen: false);
                    weatherModel.fetchWeather(homeModel.matchingCities[i]);
                    homeModel.showAutoComplete = false;
                  },
                );
              },
              itemCount: homeModel.matchingCities.length,
            ),
          ),
        ),
      ),
    );
  }
}
