import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ActivityScreen.dart';
import 'package:flutter_app/Upper_Icon.dart';
import 'package:flutter_app/account_screen.dart';
import 'bottom_bar.dart';
import 'contants.dart';
import 'drawer_ui.dart';

class MyHomePage extends StatefulWidget {
  static String id = 'home_screen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerUI(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 26),
          child: IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
              size: 40.0,
            ),
            onPressed: () {},
          ),
        ),
        toolbarHeight: 65,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AccountScreen.id);
              },
              child: Hero(tag: 'logo',
                child: CircleAvatar(backgroundColor: Colors.white,
                  child: Image.asset('images/logo.png'),
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
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
                BottomFields(
                  imageDir: 'images/standing.png',
                  headText: 'Buying Fruits',
                  subText: '3 of 5 Completed',
                  gradColor: [Colors.white, Colors.deepPurple],
                  gradStop: [0.0, 1.0],
                ),
                SizedBox(
                  height: 30.0,
                ),
                BottomFields(
                    imageDir: 'images/stand.png',
                    headText: 'Water the Plants',
                    subText: '3 of 5 Completed',
                    gradColor: [Colors.white, Colors.deepPurple],
                    gradStop: [0.0, 1.0]),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        actCol: Colors.black26,
        troCol: Colors.black26,
        homeCol: Colors.black,
        actonpress: () {
          Navigator.pushNamed(context, ActivityScreen.id);
        },
        troOnpress: () {
          Navigator.pushNamed(context, AccountScreen.id);
        },
      ),
    );
  }
}
