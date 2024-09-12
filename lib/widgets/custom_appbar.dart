import 'package:flutter/material.dart';
import '../widgets/icon_badge.dart';
import '../constants.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

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
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: darkColor,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.015,
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
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Text(
                            'Message 1',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
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
                          Text('Message 2',
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
                          Text('Message 3',
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
                child: Text('See All Messages'),
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
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Text('Message 1',
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
                          Text('Message 2',
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
                          Text('Message 3',
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
                              fontWeight: FontWeight.w400, fontSize: 12.5)),
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
