import 'package:cupertino/AppleIcon.dart';
import 'package:cupertino/DotsIndicator.dart';
import 'package:cupertino/IconGrid.dart';
import 'package:cupertino/LauncherIcon.dart';
import 'package:cupertino/Res.dart';
import 'package:cupertino/StatusBar.dart';
import 'package:cupertino/XStatusBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = new PageController();

    final a = new IconGrid();
    final pager = new PageView.builder(
      itemBuilder: (BuildContext context, int index) => a,
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      controller: pageController,
    );

    final bottomArea = new Container(
      padding: const EdgeInsets.only(top: 16.0, bottom: 11.0),
      height: 92.0,
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                $Colors.yellowStart,
                $Colors.yellowEnd,
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp)),
      alignment: FractionalOffset.bottomCenter,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new LauncherIcon(
            displayText: false,
            icon: AppleIcon.getIconList().last,
          ),
          new LauncherIcon(
            displayText: false,
            icon: AppleIcon.getIconList().last,
          ),
        ],
      ),
    );

    return new MaterialApp(
      title: 'Cupertino iOS',
      theme: theme,
      home: new Scaffold(
          body: new Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Expanded(
                  child: new Image.asset(
                $Asset.background,
                fit: BoxFit.cover,
              ))
            ],
          ),
          new Positioned(
            child: new XStatusBar(),
            top: 0.0,
            left: 0.0,
            right: 0.0,
          ),
          new Column(
            children: <Widget>[
              new Container(
                height: 40.0,
              ),
              new Expanded(child: pager),
              new Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  width: 100.0,
                  child: new DotsIndicator(
                      controller: pageController, itemCount: 2)),
              bottomArea,
            ],
          ),
        ],
      )),
    );
  }
}

var theme = new ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.black,
  platform: TargetPlatform.iOS,
);
