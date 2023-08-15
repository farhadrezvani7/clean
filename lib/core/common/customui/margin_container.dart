import 'package:flutter/material.dart';

class VerticalMarginContainer extends StatelessWidget {
  final double margin;
  final Widget child;

  const VerticalMarginContainer(
      {super.key, required this.margin, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: child,
    );
  }
}

class HorizontalMarginContainer extends StatelessWidget {
  final double margin;
  final Widget child;

  const HorizontalMarginContainer(
      {super.key, required this.margin, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: child,
    );
  }
}
