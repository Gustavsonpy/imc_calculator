import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const InputForm({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 30,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          border: const OutlineInputBorder()
        ),
      ),
    );
  }
}

class BtnForm extends StatelessWidget {
  const BtnForm({super.key, this.boolFunction});
  final boolFunction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
          onPressed: boolFunction,
          style: ElevatedButton.styleFrom(fixedSize: Size(110, 10), backgroundColor: Colors.red),
          label: const Text('Send', style: TextStyle(color: Colors.black),),
          icon: const Icon(Icons.send_rounded, size: 20),
        );
  }
}