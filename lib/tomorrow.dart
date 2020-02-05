import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tomorrow extends StatelessWidget {
  String tomorrowText;

  Tomorrow(this.tomorrowText);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(tomorrowText));
  }
}
