import 'package:flutter/material.dart';

class ColumnTut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "First Item",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          new Text(
            "Second Item",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white),
          ),
          new Container(
            color: Colors.deepOrange.shade500,
            alignment: Alignment.bottomLeft,
            child: new Text(
              "Third Item",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),

      // child: new Text(
      //   "Hello container",
      //   textDirection: TextDirection.ltr,
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontWeight: FontWeight.w900,
      //     fontSize: 18.3,
      //   ),
      // ),
    );
  }
}
