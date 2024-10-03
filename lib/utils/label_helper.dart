import 'package:flutter/material.dart';

Widget buildLabel({
  required BuildContext context,
  required String label,
  required Color color,
  required String route,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Row(
        children: [
          Icon(
            Icons.circle_outlined,
            color: color,
          ),
          const SizedBox(width: 12.0),
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 17.0,
            ),
          )
        ],
      ),
    ),
  );
}
