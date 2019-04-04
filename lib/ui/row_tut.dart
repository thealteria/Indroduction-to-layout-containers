import 'package:flutter/material.dart';

class RowTut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Row data 1", textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 10)),
          new Text("Row data 2", textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 10,),),
          
          const Expanded(
            child: const Text("Row 3"),
          )
        ],
      ),
    );
  }
}
