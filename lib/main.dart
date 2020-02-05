import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './today.dart';
import './tomorrow.dart';
import './ten_day.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
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
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search location",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Today(),
              Tomorrow('Tomorrow'),
              TenDay('10 days'),
            ],
          ),
        ),
      ),
    );
  }
}
