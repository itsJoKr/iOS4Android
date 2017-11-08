import 'dart:math';

import 'package:flutter/material.dart';

/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  Color color;
  final Color whiteT = new Color(0x77FFFFFF);

  // The base size of the dots
  static const double _kDotSize = 7.5;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 16.0;

  Widget _buildDot(int index) {
//    double selectedness = Curves.easeOut.transform(
//      max(
//        0.0,
//        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
//      ),
//    );
//    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    bool selected = false;
    if (controller.page != null) {
      selected = controller.page.round() == index;
    }

    if (selected)
      color = Colors.white;
    else
      color = whiteT;

    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: color,
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize,
            height: _kDotSize,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildDot(-1),
        _buildDot(0),
        _buildDot(1),
      ],
    );
  }
}