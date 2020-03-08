import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weather_api/ui/home/views/tabs/ten_day.dart';
import 'package:weather_api/ui/home/views/tabs/today.dart';
import 'package:weather_api/ui/home/views/tabs/tomorrow.dart';
import 'package:weather_api/ui/home/widgets/autocomplete.dart';
import 'package:weather_api/viewmodels/home_view_model.dart';
import 'package:weather_api/viewmodels/weather_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeModel = Provider.of<HomeViewModel>(context);
    return DefaultTabController(
      length: 3,
      child: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: Text('TODAY')),
                  Tab(icon: Text('TOMORROW')),
                  Tab(icon: Text('10 DAYS')),
                ],
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  controller: homeModel.textEditingController,
                  onChanged: (value) => homeModel.checkAutoComplete(),
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search location...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                Today('10 days'),
                Tomorrow('10 days'),
                TenDay('10 days'),
              ],
            ),
          ),
          homeModel.showAutoComplete ? Autocomplete() : Container(),
        ],
      ),
    );
  }
}
