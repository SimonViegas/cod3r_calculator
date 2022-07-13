import 'package:calculator/components/keyboard.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';
import '../models/memory.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _quandoPressionado(String comando) {
    setState(() {
      memory.applyCommand(comando);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(children: <Widget>[
        Display(memory.value.toString()),
        Keyboard(_quandoPressionado),
      ]),
    );
  }
}
