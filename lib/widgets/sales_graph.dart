import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import '../models/sales_data.dart';

class SalesGraph extends StatefulWidget {
  const SalesGraph({super.key});

  @override
  SalesGraphState createState() => SalesGraphState();
}

class SalesGraphState extends State<SalesGraph> {
  List<SalesData> data = [
    SalesData('January', 35),
    SalesData('February', 28),
    SalesData('March', 34),
    SalesData('April', 32),
    SalesData('May', 40),
    SalesData('June', 36),
    SalesData('July', 44),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfCartesianChart(
          primaryXAxis: const CategoryAxis(),
          legend: const Legend(isVisible: false),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <CartesianSeries<SalesData, String>>[
            LineSeries<SalesData, String>(
              dataSource: data,
              xValueMapper: (SalesData sales, _) => sales.month,
              yValueMapper: (SalesData sales, _) => sales.sales,
              name: 'Sales',
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SfSparkLineChart.custom(
              trackball: const SparkChartTrackball(
                activationMode: SparkChartActivationMode.tap,
              ),
              marker: const SparkChartMarker(
                displayMode: SparkChartMarkerDisplayMode.all,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
