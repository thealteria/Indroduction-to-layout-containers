import 'package:flutter/material.dart';

class StackTut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: new Stack(alignment: Alignment.bottomCenter,
      children: <Widget>[
        const Text("Stack 1"),
        const Text("Lmfao lol 2"),
        const Text("kkkkkk 3")
      ],)
    );
  }
}
