import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_bar.dart';
import 'package:flutter_app/contants.dart';
import 'package:flutter_app/drawer_ui.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/your_activity.dart';
import 'account_screen.dart';
import 'Upper_Icon.dart';
import 'package:vibration/vibration.dart';

class ActivityScreen extends StatefulWidget {
  static String id = 'Activity_screen';
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
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
                Navigator.pushNamed(context, AccountScreen.id);
                Vibration.vibrate(amplitude: 50,duration: 50);
              },
              child: Hero(
                tag: 'logo',
                child: CircleAvatar(
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
                // upperTop,
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DayDate(
                        date: '09',
                        day: 'Mon',
                        colour: Colors.white,
                        textcolor: Colors.grey[300]),
                    DayDate(
                      date: '10',
                      day: 'Tue',
                      colour: Colors.white,
                      textcolor: Colors.grey,
                    ),
                    DayDate(
                        date: '11',
                        day: 'Wed',
                        colour: Colors.black,
                        textcolor: Colors.white),
                    DayDate(
                        date: '12',
                        day: 'Thr',
                        colour: Colors.white,
                        textcolor: Colors.grey),
                    DayDate(
                        date: '13',
                        day: 'Fri',
                        colour: Colors.white,
                        textcolor: Colors.grey[300]),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                activitySeeAll,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxContainers(
                      onpress: () {
                        Navigator.pushNamed(context, YourActivity.id);
                        Vibration.vibrate(amplitude: 50, duration: 50);
                      },
                      main1: 'Writing',
                      main2: 'Assignment',
                      textcol: Colors.white,
                      sub: '3 of 5 Completed',
                      contIcon: Icon(
                        Icons.book,
                        size: 50,
                        color: Colors.white60,
                      ),
                      containerCol: Color(0xff22222E),
                      subCol: Colors.white60,
                    ),
                    BoxContainers(
                      onpress: () {
                        Vibration.vibrate(amplitude: 50, duration: 50);
                      },
                      main1: 'Taking Piano',
                      main2: 'Class',
                      sub: '3 of 5 Completed',
                      contIcon: Icon(
                        CupertinoIcons.piano,
                        size: 50,
                      ),
                      containerCol: Color(0xffF5F5F5),
                      subCol: Colors.black26,
                    ),
                  ],
                ),
                Row(
                  children: [
                    BoxContainers(
                      main1: 'Drink a Glass',
                      main2: 'of Water',
                      sub: '3 of 5 Completed',
                      contIcon: Icon(
                        Icons.water_damage,
                        size: 50,
                      ),
                      containerCol: Color(0xffF5F5F5),
                      subCol: Colors.black26,
                    ),
                    BoxContainers(
                      main1: 'Read novel',
                      main2: 'Books',
                      textcol: Colors.white,
                      sub: '3 of 5 Completed',
                      contIcon: Icon(
                        CupertinoIcons.book,
                        size: 50,
                        color: Colors.white,
                      ),
                      containerCol: Color(0xffB9A9DF),
                      subCol: Color(0xffF5F5F5),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        actCol: Colors.black,
        troCol: Colors.black26,
        homeCol: Colors.black26,
        homeOnpress: () {
          Navigator.pushNamed(context, MyHomePage.id);
          Vibration.vibrate(amplitude: 50, duration: 50);
        },
        troOnpress: () {
          Navigator.pushNamed(context, AccountScreen.id);
          Vibration.vibrate(amplitude: 50, duration: 50);
        },
      ),
    );
  }
}

class BoxContainers extends StatelessWidget {
  final Icon contIcon;
  final String main1, main2, sub;
  final Color containerCol, textcol, subCol;
  final Function onpress;
  BoxContainers(
      {this.containerCol,
      this.textcol,
      this.contIcon,
      this.main1,
      this.main2,
      this.subCol,
      this.sub,
      this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.only(top: 17, left: 17, right: 17),
        decoration: BoxDecoration(
          color: containerCol,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              contIcon,
              SizedBox(
                height: 12,
              ),
              Text(
                main1,
                style: TextStyle(
                    color: textcol, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                main2,
                style: TextStyle(
                    color: textcol, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                sub,
                style: TextStyle(color: subCol, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
