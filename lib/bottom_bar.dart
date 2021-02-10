import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      notchMargin: 10.0,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 50,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(left: 28.0),
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 28.0),
              icon: Icon(Icons.emoji_events),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}