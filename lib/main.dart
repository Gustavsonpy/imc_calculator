import 'package:flutter/material.dart';
import 'components/inputForm.dart';

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
        body: MyIMC(),
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
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InputForm(controller: weightController, label: 'Kg'),
        InputForm(controller: heightController, label: 'Height'),
        const BtnForm(),
      ],
    );
  }
}