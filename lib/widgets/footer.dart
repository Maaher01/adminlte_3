import 'package:flutter/material.dart';
import '../constants.dart';

class Footer extends StatelessWidget {
  final year = DateTime.now().year;

  Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey.shade300,
          height: 1.0,
          width: double.infinity,
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              Text(
                'Copyright © $year ',
                style: const TextStyle(
                  color: darkColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              const Text(
                'Softin Technology Ltd',
                style: TextStyle(
                  color: Color(0xff007bff),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              const Text(
                '. All rights reserved.',
                style: TextStyle(
                  color: darkColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
