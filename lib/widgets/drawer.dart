import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});
  @override
  State<CustomDrawer> createState() {
    return _CustomDrawerState();
  }
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isDropdownOpen = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 6, 12, 48),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            onDetailsPressed: () {
              setState(() {
                isDropdownOpen = !isDropdownOpen;
              });
            },
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF10217D), Color.fromARGB(255, 6, 12, 48)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            accountName: const Text('User'),
            accountEmail: const Text('user@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user male.jpg'),
            ),
          ),
          if (isDropdownOpen)
            ExpansionTile(
              collapsedBackgroundColor: const Color(0xFF10217D),
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 6, 12, 48),
              title: const Text(
                'Additional Information',
                style: TextStyle(color: Colors.white),
              ),
              children: [
                ListTile(
                  title: const Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Handle profile tap
                    print('Profile tapped');
                  },
                ),
                ListTile(
                  title: const Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Handle settings tap
                    print('Settings tapped');
                  },
                ),
              ],
            ),
          ListTile(
            tileColor: const Color(0xFF10217D),
            style: ListTileStyle.drawer,
            leading: const Icon(
              Icons.assignment,
              color: Colors.white,
            ),
            title: const Text('Tests'),
            titleTextStyle: const TextStyle(color: Colors.white),
            subtitle: const Text('All the tests in a single place!'),
            subtitleTextStyle: const TextStyle(color: Colors.white70),
            onTap: () {},
          ),
          ListTile(
            tileColor: const Color(0xFF10217D),
            style: ListTileStyle.drawer,
            leading: const Icon(
              Icons.extension,
              color: Colors.white,
            ),
            title: const Text('Packages'),
            titleTextStyle: const TextStyle(color: Colors.white),
            subtitle: const Text('Best checkup packages for you!'),
            subtitleTextStyle: const TextStyle(color: Colors.white70),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
