import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.inputText, {super.key});
  final String inputText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 1),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF40BFFF),
            minimumSize: const Size(double.infinity, 47),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Color(0xFF40BFFF)))),
        child: Text(
          inputText,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
