import 'package:flutter/material.dart';

import '../widgets/footer.dart';
import '../widgets/side_drawer.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/sales_section.dart';
import '../widgets/visitors_section.dart';
import '../widgets/statistics_grid.dart';

import '../constants.dart';

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

        return Scaffold(
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: CustomAppbar(),
            ),
            drawer: constraints.maxWidth < 992 ? const SideDrawer() : null,
            body: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          if (constraints.maxWidth >= 992) const SideDrawer(),
                          Expanded(
                            child: Container(
                              color: bgColor,
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
                                              height: 140,
                                              child: StatisticsGrid(
                                                  crossAxisCount:
                                                      crossAxisCount)),
                                          const SizedBox(height: 10.0),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SalesSection(),
                                              const SizedBox(
                                                width: 20.0,
                                              ),
                                              VisitorsSection()
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
                        ],
                      ),
                    ),
                    const Footer(),
                  ],
                ),
              ],
            ));
      },
    );
  }
}
