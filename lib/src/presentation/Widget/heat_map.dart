import 'package:comicsapp/src/utils/datatime/date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final String startDateYYYYMMDD;
  const MyHeatMap(
      {super.key, required this.datasets, required this.startDateYYYYMMDD});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3.0,
                  blurRadius: 3.0,
                  offset: const Offset(0.0, 2.0))
            ],
            gradient: LinearGradient(colors: [
              Colors.grey.shade300,
              Colors.grey.shade200,
              Colors.grey.shade100
            ])),
        child: HeatMap(
            datasets: datasets,
            startDate: createDateTimeObject(startDateYYYYMMDD),
            endDate: DateTime.now().add(const Duration(days: 0)),
            colorMode: ColorMode.color,
            defaultColor: Colors.blue.shade200,
            textColor: Colors.grey.shade800,
            showColorTip: false,
            showText: true,
            scrollable: true,
            size: 30,
            colorsets: const {1: Colors.green}));
  }
}
