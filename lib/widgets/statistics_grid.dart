import 'package:flutter/material.dart';

class StatisticsGrid extends StatelessWidget {
  final int crossAxisCount;

  const StatisticsGrid({super.key, required this.crossAxisCount});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double childAspectRatio;
    if (screenWidth > 1400) {
      childAspectRatio = 3;
    } else if (screenWidth > 992) {
      childAspectRatio = 2;
    } else if (screenWidth > 768) {
      childAspectRatio = 3;
    } else if (screenWidth > 576) {
      childAspectRatio = 3.5;
    } else {
      childAspectRatio = 1.5;
    }

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: childAspectRatio,
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
                        ? const Color(0xffffc107)
                        : const Color(0xffdc3545),
            borderRadius: BorderRadius.circular(4.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (screenWidth > 1350)
                        ? Text(
                            index == 0
                                ? '150'
                                : index == 1
                                    ? '53%'
                                    : index == 2
                                        ? '44'
                                        : '65',
                            style: const TextStyle(
                                fontSize: 36.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        : Text(
                            index == 0
                                ? '150'
                                : index == 1
                                    ? '53%'
                                    : index == 2
                                        ? '44'
                                        : '65',
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                    const SizedBox(height: 10.0),
                    screenWidth > 1400
                        ? Text(
                            index == 0
                                ? 'New Orders'
                                : index == 1
                                    ? 'Bounce Rate'
                                    : index == 2
                                        ? 'User Registrations'
                                        : 'Unique Visitors',
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            index == 0
                                ? 'New Orders'
                                : index == 1
                                    ? 'Bounce Rate'
                                    : index == 2
                                        ? 'User Registrations'
                                        : 'Unique Visitors',
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                  ],
                ),
                if (screenWidth > 768)
                  Icon(
                    index == 0
                        ? Icons.shopping_bag_outlined
                        : index == 1
                            ? Icons.signal_cellular_alt_outlined
                            : index == 2
                                ? Icons.person_add
                                : Icons.pie_chart,
                    color: index == 0
                        ? const Color(0xff148a9d)
                        : index == 1
                            ? const Color(0xff228e3b)
                            : index == 2
                                ? const Color(0xffd9a406)
                                : const Color(0xffbb2d3b),
                    size: 72,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
