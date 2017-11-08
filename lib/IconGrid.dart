import 'package:cupertino/AppleIcon.dart';
import 'package:cupertino/LauncherIcon.dart';
import 'package:cupertino/Res.dart';
import 'package:flutter/cupertino.dart';

class IconGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = AppleIcon.getIconList();

    final row1 = new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      new LauncherIcon(icon: list[0]),
      new LauncherIcon(icon: list[1]),
      new LauncherIcon(icon: list[2]),
      new LauncherIcon(icon: list[3]),
    ],);

    final row2 = new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new LauncherIcon(icon: list[4]),
        new LauncherIcon(icon: list[5]),
        new LauncherIcon(icon: list[6]),
        new LauncherIcon(icon: list[7]),
      ],);

    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          row1,
          row2,
        ],
      ),
    );
  }
}
