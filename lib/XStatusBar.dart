import 'package:cupertino/Res.dart';
import 'package:flutter/material.dart';

class XStatusBar extends StatefulWidget {
  @override
  _XStatusBarState createState() => new _XStatusBarState();
}

class _XStatusBarState extends State<XStatusBar> {
  @override
  Widget build(BuildContext context) {
    final textStyle = new TextStyle(color: Colors.white, fontSize: 11.5);
    final notch =  new Expanded(
        child: new Container(
          padding: const EdgeInsets.only(left: 35.0, right: 50.0),
          child: new Container(
            alignment: FractionalOffset.topCenter,
              width: 10.0,
              height: 24.0,
              decoration: new BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.only(
                  bottomLeft: new Radius.circular(15.0),
                  bottomRight: new Radius.circular(15.0),
                ),
              )
          ),
        )
    );

    return new Container(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Align(
              child: new Text(
                ("23:30AM" + "   "),
                style: textStyle,
              ),
              alignment: FractionalOffset.center,
            ),
            notch,
            new Image.asset($Asset.battery, width: 23.0,)
          ],
        ));
  }
}

