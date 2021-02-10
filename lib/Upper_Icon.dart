import 'package:flutter/material.dart';

class UpperIcons extends StatelessWidget {
  final Color colour;
  final Icon icon;
  UpperIcons({@required this.icon, @required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(20.0)),
        margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: icon);
  }
}
