import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:weather_api/ui/home/views/home_view.dart';
import 'package:weather_api/viewmodels/home_view_model.dart';
import 'package:weather_api/viewmodels/main_info_model.dart';
import 'package:weather_api/viewmodels/weather_view_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx) => WeatherViewModel()),
          ChangeNotifierProvider(create: (ctx) => MainInfoModel()),
          ChangeNotifierProvider(create: (ctx) => HomeViewModel()),
        ],
        child: MaterialApp(
          home: HomeView(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
