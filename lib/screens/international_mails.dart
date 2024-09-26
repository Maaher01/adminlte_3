import 'package:adminlte_3/widgets/common_layout.dart';
import 'package:flutter/material.dart';

class InternationalMails extends StatelessWidget {
  const InternationalMails({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonLayout(
      body: Center(
        child: Text(
          'These are the international mails',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
