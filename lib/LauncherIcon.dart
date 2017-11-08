//import 'package:flutter/cupertino.dart';
import 'package:cupertino/AppleIcon.dart';
import 'package:flutter/material.dart';

class LauncherIcon extends StatelessWidget {
  bool displayText;
  String name;
  String imageAsset;

  LauncherIcon({AppleIcon icon, displayText = true}) {
    this.displayText = displayText;

    if (icon != null) {
      this.name = icon.name;
      this.imageAsset = icon.path;
    } else {
      this.name = "cupertino";
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget belowIcon;
    double size;

    if (displayText) {
      belowIcon = new Text(
        name,
        style: new TextStyle(fontSize: 12.0, color: Colors.white),
      );
      size = 85.0;
    } else {
      size = 75.0;
      belowIcon = new Container();
    }

    return new Container(
        width: 85.0,
        height: size,
        child: new Column(
          children: <Widget>[
            new Container(
                width: 60.0,
                height: 60.0,
                child: new ClipPath(
                  child: new Image.asset(imageAsset),
                  clipper: new RoundedIconClipper(),
                )),
            new Container(
              height: 5.0,
              width: 5.0,
            ),
            belowIcon,
          ],
        ));
  }
}

class RoundedIconClipper extends CustomClipper<Path> {
  final r = 15.0;

  @override
  Path getClip(Size size) {
    var path = new Path();

    // top right
    path.lineTo(size.width - r, 0.0);
    path.quadraticBezierTo(size.width, 0.0, size.width, r);

    // bottom right
    path.lineTo(size.width, size.height - r);
    path.quadraticBezierTo(
        size.width, size.height, size.width - r, size.height);

    // bottom left
    path.lineTo(r, size.height);
    path.quadraticBezierTo(0.0, size.height, 0.0, size.height - r);

    // top left
    path.lineTo(0.0, r);
    path.quadraticBezierTo(0.0, 0.0, r, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
