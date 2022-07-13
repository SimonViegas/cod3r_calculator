import 'package:calculator/components/keyboard.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';

class Calculator extends StatelessWidget {
  _quandoPressionado(String text) {
    // ignore: avoid_print
    print(text);
  }

  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(children: <Widget>[
        const Display('123.45'),
        Keyboard(_quandoPressionado),
      ]),
    );
  }
}
