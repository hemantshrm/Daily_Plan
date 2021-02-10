import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ActivityScreen.dart';
import 'package:flutter_app/Upper_Icon.dart';
import 'bottom_bar.dart';
import 'contants.dart';



class MyHomePage extends StatefulWidget {
  static String id = 'home_screen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                upperTop,
                SizedBox(
                  height: 30,
                ),
                Text('Total Activity',
                    style: TextStyle(color: Colors.black38, fontSize: 20.0)),
                SizedBox(
                  height: 10,
                ),
                Text('32,345',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900)),
                SizedBox(
                  height: 40,
                ),
                AnimatedContainer(
                  duration: Duration.zero,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('My Purpose', style: kmainBoxText),
                            Text('For Today',
                                textAlign: TextAlign.start,
                                style: kmainBoxText),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '1 of 5 completed',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.black54),
                            )
                          ],
                        ),
                        Icon(
                          Icons.assignment_rounded,
                          size: 80.0,
                          color: Colors.black87,
                        )
                      ],
                    ),
                  ),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bgmain.png'),
                        fit: BoxFit.fill),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ActivitySeeAll, // Activity and see all
                SizedBox(
                  height: 30.0,
                ),
                BottomFields(imageDir: 'images/standing.png',headText: 'Buying Fruits',subText: '3 of 5 Completed',gradColor: [Colors.white, Colors.lightBlue],gradStop: [0.0, 1.0],),
                SizedBox(
                  height: 30.0,
                ),
                BottomFields(imageDir: 'images/stand.png',headText: 'Water the Plants',subText: '3 of 5 Completed',gradColor: [Colors.white, Colors.lightBlue],gradStop: [0.0, 1.0]),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, ActivityScreen.id);
            },
            child: Icon(
              Icons.list,
              color: Colors.white,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}


Widget upperTop = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    UpperIcons(
      icon: Icon(
        Icons.menu,
        size: 35.0,
      ),
      colour: Color(0xfff1efef),
    ),
    UpperIcons(
      icon: Icon(
        Icons.account_circle_rounded,
        color: Colors.black,
        size: 35.0,
      ),
      colour: Color(0xffC7B5EF),
    ),
  ],
);
