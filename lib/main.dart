import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('IMC Calculator'),),
          backgroundColor: Colors.amber[200],
        ),
      ),
    );
  }
}

class MyIMC extends StatefulWidget {
  const MyIMC({super.key});

  @override
  State<MyIMC> createState() => _MyIMCState();
}

class _MyIMCState extends State<MyIMC> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}