import 'package:adminlte_3/widgets/common_layout.dart';
import 'package:flutter/material.dart';
import '../widgets/sales_section.dart';
import '../widgets/calendar_section.dart';
import '../widgets/statistics_grid.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;
        if (constraints.maxWidth >= 992) {
          crossAxisCount = 4;
        } else if (constraints.maxWidth >= 768) {
          crossAxisCount = 2;
        } else {
          crossAxisCount = 1;
        }

        return CommonLayout(
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Dashboard',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: constraints.maxWidth >= 992
                                  ? 140
                                  : constraints.maxWidth >= 768
                                      ? 335
                                      : 525,
                              child: StatisticsGrid(
                                  crossAxisCount: crossAxisCount),
                            ),
                            const SizedBox(height: 10.0),
                            constraints.maxWidth >= 992
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SalesSection(
                                        width: constraints.maxWidth * 0.50,
                                      ),
                                      const SizedBox(width: 20.0),
                                      CalendarSection(
                                        width: constraints.maxWidth * 0.34,
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      SalesSection(
                                        width: constraints.maxWidth,
                                      ),
                                      const SizedBox(height: 20.0),
                                      CalendarSection(
                                        width: constraints.maxWidth,
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
