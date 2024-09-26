import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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
        //Initialize the chart widget
        SfCartesianChart(
            primaryXAxis: const CategoryAxis(),
            // Chart title
            // title: const ChartTitle(text: 'Half yearly sales analysis'),
            // Enable legend
            legend: const Legend(isVisible: false),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <CartesianSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                  dataSource: data,
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  name: 'Sales',
                  // Enable data label
                  dataLabelSettings: const DataLabelSettings(isVisible: true))
            ]),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            //Initialize the spark charts widget
            child: SfSparkLineChart.custom(
              //Enable the trackball
              trackball: const SparkChartTrackball(
                  activationMode: SparkChartActivationMode.tap),
              //Enable marker
              marker: const SparkChartMarker(
                  displayMode: SparkChartMarkerDisplayMode.all),
              //Enable data label
              // labelDisplayMode: SparkChartLabelDisplayMode.all,
              // xValueMapper: (int index) => data[index].month,
              // yValueMapper: (int index) => data[index].sales,
              // dataCount: 5,
            ),
          ),
        )
      ],
    );
  }
}

class SalesData {
  SalesData(this.month, this.sales);

  final String month;
  final double sales;
}
