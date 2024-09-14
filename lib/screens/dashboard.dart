import 'package:adminlte_3/widgets/footer.dart';
import 'package:flutter/material.dart';
import '../widgets/side_drawer.dart';
import '../widgets/custom_appbar.dart';
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
                                      child: GridView.builder(
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: crossAxisCount,
                                          crossAxisSpacing: 19.0,
                                          mainAxisSpacing: 16.0,
                                        ),
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              color: index == 0
                                                  ? const Color(0xff17a2b8)
                                                  : index == 1
                                                      ? const Color(0xff28a745)
                                                      : index == 2
                                                          ? const Color(
                                                              0xffffc107)
                                                          : const Color(
                                                              0xffdc3545),
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 4.0,
                                                  spreadRadius: 2.0,
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 14.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        index == 0
                                                            ? '150'
                                                            : index == 1
                                                                ? '53%'
                                                                : index == 2
                                                                    ? '44'
                                                                    : '65',
                                                        style: const TextStyle(
                                                            fontSize: 36.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      const SizedBox(
                                                          height: 10.0),
                                                      Text(
                                                        index == 0
                                                            ? 'New Orders'
                                                            : index == 1
                                                                ? 'Bounce Rate'
                                                                : index == 2
                                                                    ? 'User Registrations'
                                                                    : 'Unique Visitors',
                                                        style: const TextStyle(
                                                            fontSize: 16.0,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                  Icon(
                                                    index == 0
                                                        ? Icons
                                                            .shopping_bag_outlined
                                                        : index == 1
                                                            ? Icons
                                                                .signal_cellular_alt_outlined
                                                            : index == 2
                                                                ? Icons
                                                                    .person_add
                                                                : Icons
                                                                    .pie_chart,
                                                    color: index == 0
                                                        ? const Color(
                                                            0xff148a9d)
                                                        : index == 1
                                                            ? const Color(
                                                                0xff228e3b)
                                                            : index == 2
                                                                ? const Color(
                                                                    0xffd9a406)
                                                                : const Color(
                                                                    0xffbb2d3b),
                                                    size: 84,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
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
