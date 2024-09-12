import 'package:flutter/material.dart';
import '../constants.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: SizedBox(
          height: 40.0,
          child: Container(
            decoration: BoxDecoration(
                color: darkColor,
                border: Border.all(color: bgColor, width: 0.4),
                borderRadius: BorderRadius.circular(4.0)),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    style: TextStyle(
                        color: bgColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: bgColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 14.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 0.5,
                  color: bgColor,
                  margin: const EdgeInsets.symmetric(horizontal: 12.0),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.search,
                    color: bgColor,
                    size: 22.0,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
