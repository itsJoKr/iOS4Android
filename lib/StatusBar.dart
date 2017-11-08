import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = new TextStyle(color: Colors.white, fontSize: 11.5);
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
        margin: const EdgeInsets.only(top: 12.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text(
              "Carrier",
              style: textStyle,
            ),
            new Expanded(
                child: new Align(
              child: new Text(
                " 12:30 PM",
                style: textStyle,
              ),
              alignment: FractionalOffset.center,
            )),
            new Text("Batter", style: textStyle,)
          ],
        ));
  }
}
