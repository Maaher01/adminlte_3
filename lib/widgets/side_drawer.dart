import 'package:flutter/material.dart';
import '../constants.dart';
import 'custom_searchbar.dart';

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
              padding: const EdgeInsets.symmetric(vertical: 38.0),
              color: darkColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.5, horizontal: 24.0),
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
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: bgColor,
                    thickness: 0.3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 24.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/profile-photo.jpeg',
                            width: 35.0,
                            height: 35.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        const Text(
                          'Syed Maaher Hossain',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.5,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: bgColor,
                    thickness: 0.3,
                  ),
                  const CustomSearchBar(),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
