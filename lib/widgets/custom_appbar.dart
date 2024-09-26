import 'package:flutter/material.dart';
import '../widgets/icon_badge.dart';
import '../widgets/custom_searchbar.dart';
import '../constants.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  CustomAppbarState createState() => CustomAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.1),
        child: Container(
          color: Colors.grey.shade300,
          height: 1.0,
        ),
      ),
      leading: Builder(
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 25,
                color: darkColor,
              ),
            ),
          );
        },
      ),
      title: screenWidth > 768
          ? Row(
              children: [
                const SizedBox(width: 16.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: darkColor,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Home',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.local_phone,
                        color: darkColor,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Contact',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            )
          : Container(),
      actions: <Widget>[
        if (screenWidth > 1200)
          Container(
            width: screenWidth * 0.15,
            alignment: Alignment.center,
            child: const CustomSearchBar(),
          ),
        if (screenWidth > 1200)
          SizedBox(
            width: screenWidth * 0.010,
          ),
        IconBadge(
          value: 3,
          color: Colors.red,
          textColor: Colors.white,
          child: PopupMenuButton<int>(
            icon: const Icon(
              Icons.chat_bubble_outline,
              color: darkColor,
            ),
            offset: const Offset(-20, 35),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/profile-photo.jpeg',
                            width: 45.0,
                            height: 45.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Brad Diesel',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text('Call me whenever you can',
                                style: TextStyle(fontSize: 13)),
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: darkColor,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '4 Hours Ago',
                                  style: TextStyle(
                                      fontSize: 13.5, color: darkColor),
                                )
                              ],
                            )
                          ],
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.star_rate_rounded,
                              color: Colors.red,
                              size: 23,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/profile-photo.jpeg',
                            width: 45.0,
                            height: 45.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Pierce',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text('Message received',
                                style: TextStyle(fontSize: 13)),
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  size: 18,
                                  color: darkColor,
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '4 Hours Ago',
                                  style: TextStyle(
                                    fontSize: 13.5,
                                    color: darkColor,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.star_rate_rounded,
                              size: 23,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/profile-photo.jpeg',
                            width: 45.0,
                            height: 45.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nora Sylvester',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              'Call me whenever you can',
                              style: TextStyle(fontSize: 13),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  size: 18,
                                  color: darkColor,
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '4 Hours Ago',
                                  style: TextStyle(
                                    fontSize: 13.5,
                                    color: darkColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.star_rate_rounded,
                              color: Colors.orangeAccent,
                              size: 23,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Center(
                  child: Text(
                    'See All Messages',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.015,
        ),
        IconBadge(
          value: 5,
          color: Colors.yellow,
          textColor: Colors.black,
          child: PopupMenuButton<int>(
            icon: const Icon(
              Icons.notifications_none,
              color: darkColor,
            ),
            offset: const Offset(-20, 35),
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Notification 1',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '3 mins',
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Notification 2',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('12 hours',
                                style: TextStyle(fontWeight: FontWeight.w300)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Notification 3',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('2 days',
                                style: TextStyle(fontWeight: FontWeight.w300)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Center(
                  child: Column(
                    children: [
                      Text('See All Notifications',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13.5)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
          child: PopupMenuButton<int>(
            offset: const Offset(-20, 35),
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Syed Maaher Hossain',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              size: 22.0,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 20.0,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text('Logout',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile-photo.jpeg',
                width: 35.0,
                height: 35.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }
}
