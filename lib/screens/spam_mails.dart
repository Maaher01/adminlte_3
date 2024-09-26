import 'package:adminlte_3/widgets/common_layout.dart';
import 'package:flutter/material.dart';

class SpamMails extends StatelessWidget {
  const SpamMails({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonLayout(
      body: Center(
        child: Text(
          'These are the spam mails',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
