import 'package:flutter/material.dart';
import 'package:health_application/screens/home.dart';
import 'package:health_application/widgets/appbar.dart';
import 'package:health_application/widgets/drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int currentIndex = 0;
  void _selectPageIndex(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 50), child: CustomAppbar()),
      drawer: const CustomDrawer(),
      body: const Center(child: HomeScreen()),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(color: Color(0xCC10217D)),
          onTap: _selectPageIndex,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                icon: Icon(
                  Icons.home_outlined,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                activeIcon: Icon(
                  Icons.home_filled,
                  color: Color(0xCC10217D),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.assignment_outlined,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                activeIcon: Icon(
                  Icons.assignment,
                  color: Color(0xFF10217D),
                ),
                label: "Tests"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.extension_outlined,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                activeIcon: Icon(
                  Icons.extension,
                  color: Color(0xFF10217D),
                ),
                label: "Packages"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Color(0xFF10217D),
                ),
                label: "Profile"),
          ]),
    );
  }
}
