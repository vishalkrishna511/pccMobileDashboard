import 'dart:math';

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class Doughnut extends StatefulWidget {
  const Doughnut({super.key});

  @override
  State<Doughnut> createState() => _DoughnutState();
}

class _DoughnutState extends State<Doughnut> {
  @override
  Widget build(BuildContext context) {
    int rdn1 = Random().nextInt(1000) + 1200;
    int rdn2 = Random().nextInt(1000) + 872;
    int rdn3 = Random().nextInt(1000) + 720;
    final List<ChartData> chartData = [
      ChartData('Current', rdn1, Color.fromARGB(255, 60, 255, 0)),
      ChartData('Average', rdn2, Color.fromARGB(255, 34, 0, 255)),
      ChartData('Pending', rdn3, Color.fromARGB(255, 255, 11, 11)),
    ];
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCircularChart(
                    backgroundColor: Color.fromARGB(244, 33, 21, 21),
                    series: <CircularSeries>[
          // Renders doughnut chart
          DoughnutSeries<ChartData, String>(
            innerRadius: '70%',
            dataSource: chartData,
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData data, _) => data.x,
            dataLabelSettings: const DataLabelSettings(
                isVisible: true, labelPosition: ChartDataLabelPosition.outside),
            yValueMapper: (ChartData data, _) => data.y,
            dataLabelMapper: (
              ChartData data,
              _,
            ) =>
                data.x + " \n" + data.y.toString(),
          )
        ]))));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final int y;
  final Color color;
}
