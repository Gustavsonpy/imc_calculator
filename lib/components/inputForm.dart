import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const InputForm({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      margin: const EdgeInsets.only(right: 20),
      child: TextField(
        maxLines: 1,
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: const TextStyle(fontSize: 12),
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        ),
        style: const TextStyle(fontSize: 12,), cursorColor: Colors.amber[600],
      ),
    );
  }
}

class BtnForm extends StatelessWidget {
  const BtnForm({super.key, this.boolFunction});
  final boolFunction;

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton.icon(
    //       onPressed: boolFunction,
    //       style: ElevatedButton.styleFrom(fixedSize: Size(110, 10), backgroundColor: Color(0xff4C7178)),
    //       label: const Text('Send', style: TextStyle(color: Colors.black,)),
    //       icon: const Icon(Icons.send_rounded, size: 20),
    //       iconAlignment: IconAlignment.end,
    //     );
    return IconButton(
      onPressed: boolFunction,
      icon: const Icon(Icons.send_rounded, size: 18, color: Colors.white),
      style: IconButton.styleFrom(
        backgroundColor: Colors.amber[600],
      ),
    );
  }
}