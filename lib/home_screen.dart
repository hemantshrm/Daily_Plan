import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ActivityScreen.dart';
import 'package:flutter_app/account_screen.dart';
import 'bottom_bar.dart';
import 'contants.dart';
import 'drawer_ui.dart';
import 'package:vibration/vibration.dart';

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
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 65,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AccountScreen.id);Vibration.vibrate(amplitude: 50,duration: 50);
              },
              child: Hero(
                tag: 'logo',
                child: CircleAvatar(
                  backgroundColor: Colors.white,
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
                    // image: DecorationImage(
                    //     image: AssetImage('images/bgmain.png'),
                    //     fit: BoxFit.fill),
                    // color: Colors.white,
                    color: Color(0xffC1E3FC),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                activitySeeAll, // Activity and see all
                SizedBox(
                  height: 30.0,
                ),
                BottomFields(
                  contCol: Color(0xffF5F5F5),
                  imageDir: 'images/standing.png',
                  headText: 'Buying Fruits',
                  subText: '3 of 5 Completed',
                ),
                SizedBox(
                  height: 30.0,
                ),
                BottomFields(contCol: Color(0xffF5F5F5),
                    imageDir: 'images/stand.png',
                    headText: 'Water the Plants',
                    subText: '3 of 5 Completed',)
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
          Navigator.pushNamed(context, ActivityScreen.id);Vibration.vibrate(amplitude: 50,duration: 50);
        },
        troOnpress: () {
          Navigator.pushNamed(context, AccountScreen.id);Vibration.vibrate(amplitude: 50,duration: 50);
        },
      ),
    );
  }
}
