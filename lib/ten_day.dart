import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TenDay extends StatelessWidget {
  String tenDayText;

  TenDay(this.tenDayText);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(tenDayText));
  }
}
