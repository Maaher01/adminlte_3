import 'package:flutter/material.dart';
import '../widgets/calendar_main.dart';

class CalendarSection extends StatefulWidget {
  final double width;

  const CalendarSection({super.key, required this.width});

  @override
  CalendarSectionState createState() => CalendarSectionState();
}

class CalendarSectionState extends State<CalendarSection> {
  bool _isMinimized = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: _isMinimized ? 55 : 385,
      decoration: BoxDecoration(
        color: const Color(0xff44b25e),
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
                      Icons.calendar_month,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      'Calendar',
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
                      color: const Color(0xff218838),
                    ),
                    alignment: Alignment.center,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          _isMinimized = !_isMinimized;
                        });
                      },
                      icon: _isMinimized
                          ? const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            )
                          : const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 18,
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
          if (!_isMinimized) const Calendar(),
        ],
      ),
    );
  }
}
