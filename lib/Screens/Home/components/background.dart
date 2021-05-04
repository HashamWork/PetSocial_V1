import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget child;
  Background({
    @required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
