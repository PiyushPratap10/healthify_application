import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text("Popular lab tests",
                      style: TextStyle(fontSize: 23, color: Color(0xFF10217D))),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "View more",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF10217D)),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Icon(
                    Icons.arrow_right_alt,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
