import 'package:flutter/material.dart';
import '../constants.dart';

class SalesSection extends StatefulWidget {
  @override
  _SalesSectionState createState() => _SalesSectionState();
}

class _SalesSectionState extends State<SalesSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = 940;
        double height = 395;

        return Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.pie_chart),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          'Sales',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _tabController.index == 0
                                ? const Color(0xff007bff)
                                : Colors.white,
                            foregroundColor: _tabController.index == 0
                                ? Colors.white
                                : darkColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 16.0),
                          ),
                          onPressed: () {
                            setState(() {
                              _tabController.index = 0;
                            });
                          },
                          child: const Text('Graph'),
                        ),
                        const SizedBox(width: 8.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _tabController.index == 1
                                ? const Color(0xff007bff)
                                : Colors.white,
                            foregroundColor: _tabController.index == 1
                                ? Colors.white
                                : darkColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 16.0),
                          ),
                          onPressed: () {
                            setState(() {
                              _tabController.index = 1;
                            });
                          },
                          child: const Text('Pie Chart'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade300,
                height: 1.0,
                width: double.infinity,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Center(child: Text('Graph content here')),
                    Center(child: Text('Pie Chart content here')),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
