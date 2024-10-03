import 'package:adminlte_3/screens/important_mails.dart';
import 'package:adminlte_3/screens/international_mails.dart';
import 'package:adminlte_3/screens/spam_mails.dart';
import 'package:flutter/material.dart';
import './screens/dashboard.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AdminLTE 3',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/important': (context) => const ImportantMails(),
        '/spam': (context) => const SpamMails(),
        '/international': (context) => const InternationalMails(),
      },
    );
  }
}
