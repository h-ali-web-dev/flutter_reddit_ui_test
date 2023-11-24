import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({
    super.key,
  });

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      indicatorShape: CircleBorder(eccentricity: 0),
      indicatorColor: Colors.grey.withAlpha(150),
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(
          enabled: false,
          icon: Icon(Icons.person_pin_rounded),
          label: 'Community',
        ),
        NavigationDestination(
            enabled: false, icon: Icon(Icons.add), label: 'Create'),
        NavigationDestination(
            enabled: false, icon: Icon(Icons.chat), label: 'Chat'),
        NavigationDestination(
          enabled: false,
          icon: Icon(Icons.notifications_none),
          label: 'Inbox',
        ),
      ],
    );
  }
}
