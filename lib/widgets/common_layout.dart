import 'package:adminlte_3/widgets/custom_appbar.dart';
import 'package:adminlte_3/widgets/footer.dart';
import 'package:adminlte_3/widgets/side_drawer.dart';
import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  final Widget body;

  const CommonLayout({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        return Scaffold(
          appBar: const CustomAppbar(),
          drawer: screenWidth < 992 ? const SideDrawer() : null,
          body: Row(
            children: [
              if (screenWidth >= 992) const SideDrawer(),
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: body),
                    const Footer(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
