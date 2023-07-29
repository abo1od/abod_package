library abod_package;

import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key, required this.onPressed, required this.child, this.style})
      : super(key: key);
  final Function() onPressed;
  final Text child;
  ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: onPressed,
      child:child ,

      style: style ??
          ButtonStyle(


            elevation: MaterialStateProperty.all(10),
            backgroundColor: MaterialStateProperty.all(Colors.amber),
          ),
    );
  }
}
