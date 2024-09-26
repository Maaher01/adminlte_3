import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesPieChart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SalesPieChart({super.key});

  @override
  SalesPieChartState createState() => SalesPieChartState();
}

class SalesPieChartState extends State<SalesPieChart> {
  late List<ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      ChartData('David', 25),
      ChartData('Steve', 38),
      ChartData('Others', 52)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      tooltipBehavior: _tooltip,
      series: <CircularSeries<ChartData, String>>[
        DoughnutSeries<ChartData, String>(
            dataSource: data,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            name: 'Gold')
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}
