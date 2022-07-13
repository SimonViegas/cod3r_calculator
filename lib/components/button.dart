// ignore_for_file: deprecated_member_use, constant_identifier_names
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;

  const Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    Key? key,
  }) : super(key: key);

  const Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    Key? key,
  }) : super(key: key);

  const Button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: color,
        child: Text(text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200,
            )),
        onPressed: () {},
      ),
    );
  }
}
