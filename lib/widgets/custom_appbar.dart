import 'package:flutter/material.dart';
import '../widgets/icon_badge.dart';
import '../constants.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  CustomAppbarState createState() => CustomAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppbarState extends State<CustomAppbar> {
  bool _isSearching = false;
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
      title: _isSearching
          ? SizedBox(
              height: 32,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontSize: 13),
                  fillColor: bgColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.clear,
                      size: 17,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          _isSearching = false;
                          searchController.clear();
                        },
                      );
                    },
                  ),
                ),
                style: const TextStyle(color: darkColor, fontSize: 13),
              ),
            )
          : null,
      actions: <Widget>[
        if (!_isSearching)
          IconButton(
            onPressed: () {
              setState(
                () {
                  _isSearching = true;
                },
              );
            },
            icon: const Icon(
              Icons.search,
              color: darkColor,
            ),
          ),
        if (!_isSearching)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.015,
          ),
        if (!_isSearching)
          IconBadge(
            value: 3,
            color: Colors.red,
            textColor: Colors.white,
            child: PopupMenuButton<int>(
              icon: const Icon(
                Icons.chat_bubble_outline,
                color: darkColor,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
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
                      ),
                      const Divider(),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
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
                                    Text('4 Hours Ago',
                                        style: TextStyle(
                                            fontSize: 13.5, color: darkColor))
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
                      ),
                      const Divider(),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
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
                                Text('Call me whenever you can',
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
                                    Text('4 Hours Ago',
                                        style: TextStyle(
                                            fontSize: 13.5, color: darkColor))
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
                      ),
                      const Divider(),
                    ],
                  ),
                ),
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
        if (!_isSearching)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.015,
          ),
        if (!_isSearching)
          IconBadge(
            value: 5,
            color: Colors.yellow,
            textColor: Colors.black,
            child: PopupMenuButton<int>(
              icon: const Icon(
                Icons.notifications_none,
                color: darkColor,
              ),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
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
                      ),
                      Divider(),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
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
        const SizedBox(width: 16.0),
      ],
    );
  }
}
