import 'dart:async';

import 'package:cupertino/Res.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StatusBar extends StatefulWidget {
  @override
  _StatusBarState createState() => new _StatusBarState();
}


class _StatusBarState extends State {

  Timer timer;
  String time;
  DateFormat dateFormat;

  @override
  void initState() {
    dateFormat= new DateFormat("jm");
    _updateTime();

    timer = new Timer.periodic(new Duration(minutes: 1), (t) {
      setState(() {
        _updateTime();
      });
    });

  }

  @override
  void dispose() {
    timer.cancel();
  }

  void _updateTime() {
    DateTime dateTime = new DateTime.now();
    this.time = dateFormat.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = new TextStyle(color: Colors.white, fontSize: 11.5);
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
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
                (time + "   "),
                style: textStyle,
              ),
              alignment: FractionalOffset.center,
            )),
            new Image.asset($Asset.battery, width: 23.0,)
          ],
        ));
  }
}
