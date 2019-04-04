import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './column_tut.dart';

class ScaffoldTut extends StatelessWidget {
  void onPressed(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        //gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red.shade700,
        title: new Text("Flutter App"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => onPressed("Send Pressed")),
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () => onPressed("Search tapped"),
          ),
          new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColumnTut()),
                ),
          ),
        ],
      ),

      //other properties
      backgroundColor: Colors.grey.shade300,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hello Aman",
              style: new TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w400,
                color: Colors.deepOrange,
              ),
            ),
            new Container(
                margin: EdgeInsets.only(top: 20),
                child: new InkWell(
                  child: new Text("Button"),
                  onTap: () => onPressed("Button Pressed"),
                ) /*Inkwell is a widget  allows us to attach on tap 
                    property, allows us to make it as a button*/
                )
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => onPressed("Floating pressed"),
        backgroundColor: Colors.green,
        tooltip: 'Missed Call!',
        child: new Icon(Icons.call_missed),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add), title: new Text("Hey")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.ac_unit), title: new Text("Nope")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.adjust), title: new Text("Hola")),
        ],
        onTap: (int i) => onPressed("lol $i"),
      ),
    );
  }
}
