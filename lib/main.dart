import 'package:flutter/material.dart';
import 'components/inputForm.dart';
import 'functions/imc.dart';

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
  bool imcActivate = false;
  double imc = 0.0;

  void sendedData(){
    setState((){
        imcActivate = true;
        imc = calcImc(double.parse(weightController.text), double.parse(heightController.text), imcActivate);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputForm(controller: heightController, label: 'Height'),
            InputForm(controller: weightController, label: 'Kg'),
            BtnForm(boolFunction: sendedData,),
          ],
        ),
        imcActivate == true //Validation to show or not the image
          ? Image(image: AssetImage(personImage(imc)), width: 200, height: 200,)
          : const SizedBox(),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index){
              return ListTile(
                title: Text((heightController.text.isEmpty) || (heightController.text.isEmpty) ? '' : 'IMC: ${imc.toStringAsFixed(1)}'),
                trailing: Text(
                  (heightController.text.isEmpty) || (heightController.text.isEmpty) ? '' : personHealthy(imc),
                  style: const TextStyle(fontSize: 15),),
              );
            },
          )
        )
      ],
    );
  }
}