import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  return runApp(_ChartApp());
}

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  double seriesAnimation = 1500;
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true, shouldAlwaysShow: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> data = [
      _ChartData('2016', 35),
      _ChartData('2017', 28),
      _ChartData('2018', 34),
      _ChartData('2019', 32),
      _ChartData('2020', 40)
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Added 300 milliseconds to the series animation duration and provided it as the duration for the timer.
      Timer(Duration(milliseconds: seriesAnimation.toInt() + 300), () {
        _tooltipBehavior.showByIndex(0, 2);
      });
    });
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 320,
            child: SfCartesianChart(
              backgroundColor: Colors.white,
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(minimum: 15),
              tooltipBehavior: _tooltipBehavior,
              series: <ChartSeries<_ChartData, String>>[
                LineSeries<_ChartData, String>(
                  dataSource: data,
                  animationDuration: seriesAnimation,
                  xValueMapper: (_ChartData sales, _) => sales.x,
                  yValueMapper: (_ChartData sales, _) => sales.y,
                )
              ],
            ),
          ),
        ));
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
