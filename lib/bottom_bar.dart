import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {
  final Color homeCol,actCol,troCol;
  final Function homeOnpress, actonpress, troOnpress;
  BottomBar ({this.actCol,this.actonpress,this.homeCol,this.homeOnpress,this.troCol,this.troOnpress});

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
              icon: Icon(Icons.home,color: homeCol),
              onPressed: homeOnpress,
            ),IconButton(
              iconSize: 30.0,
              icon: Icon(Icons.list_alt,color: actCol),
              onPressed: actonpress,
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 28.0),
              icon: Icon(Icons.emoji_events,color: troCol),
              onPressed: troOnpress,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomFields extends StatelessWidget {

  BottomFields({this.contCol,this.imageDir,this.headText,this.subText});
  final String imageDir, headText,subText;
final Color contCol;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imageDir),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headText,
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(subText,
                    style: TextStyle(
                        fontSize: 15.0, color: Colors.black38))
              ],
            ),
            Icon(
              Icons.chevron_right,
              size: 25,
            )
          ],
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: contCol,
        borderRadius: BorderRadius.circular(40.0),
      ),
    );
  }
}