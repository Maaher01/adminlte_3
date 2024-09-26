import 'package:flutter/material.dart';
import '../constants.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        drawerTheme: const DrawerThemeData(
          shape: RoundedRectangleBorder(),
        ),
      ),
      child: Drawer(
        width: 250,
        backgroundColor: darkColor,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              color: darkColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.5, horizontal: 24.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/AdminLTELogo.webp',
                                width: 35.0,
                                height: 35.0,
                              ),
                              const SizedBox(width: 8.0),
                              const Text(
                                'Admin LTE 3',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: bgColor,
                    thickness: 0.3,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'LABELS',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            _buildLabel(
                              context: context,
                              label: 'Important',
                              color: Colors.blue,
                              route: '/important',
                            ),
                            _buildLabel(
                              context: context,
                              label: 'Spam',
                              color: Colors.red,
                              route: '/spam',
                            ),
                            _buildLabel(
                              context: context,
                              label: 'International',
                              color: Colors.yellow,
                              route: '/international',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(
      {required BuildContext context,
      required String label,
      required Color color,
      required String route}) {
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
              style: const TextStyle(color: Colors.grey, fontSize: 17.0),
            )
          ],
        ),
      ),
    );
  }
}
