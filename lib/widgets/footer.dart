import 'package:flutter/material.dart';
import '../constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

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
          child: const Wrap(
            alignment: WrapAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Copyright © 2024 ',
                    style: TextStyle(
                      color: darkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'Softin Technology Ltd',
                    style: TextStyle(
                      color: Color(0xff007bff),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    '. All rights reserved.',
                    style: TextStyle(
                      color: darkColor,
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
