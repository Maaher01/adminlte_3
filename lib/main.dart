import 'package:flutter/material.dart';
import './screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'AdminLTE 3',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
