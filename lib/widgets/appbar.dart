import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu_rounded,
            color: Color(0xFF10217D),
          )),
      title: const Text(
        'Healthify',
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Color(0xFF10217D),
            )),
      ],
    );
  }
}
