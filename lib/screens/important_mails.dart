import 'package:adminlte_3/widgets/common_layout.dart';
import 'package:flutter/material.dart';

class ImportantMails extends StatelessWidget {
  const ImportantMails({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonLayout(
      body: Center(
        child: Text(
          'These are the important mails',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
