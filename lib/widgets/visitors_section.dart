import 'package:flutter/material.dart';

class VisitorsSection extends StatefulWidget {
  final double width;

  const VisitorsSection({super.key, required this.width});

  @override
  VisitorsSectionState createState() => VisitorsSectionState();
}

class VisitorsSectionState extends State<VisitorsSection> {
  bool _isMinimized = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: _isMinimized ? 55 : 450,
      decoration: BoxDecoration(
        color: const Color(0xff238dff),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      'Visitors',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  ],
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: const Color(0xff0069d9),
                    ),
                    alignment: Alignment.center,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          _isMinimized = !_isMinimized;
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
