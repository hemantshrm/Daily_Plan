import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_bar.dart';
import 'package:flutter_app/contants.dart';
import 'package:flutter_app/drawer_ui.dart';
import 'package:flutter_app/home_screen.dart';
import 'account_screen.dart';
import 'Upper_Icon.dart';

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
      appBar:  AppBar(
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
            padding: const EdgeInsets.symmetric(horizontal: 30,),
            child: GestureDetector(
              onTap: (){Navigator.pushNamed(context, AccountScreen.id);},
              child: Hero(tag: 'logo',
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
                ActivitySeeAll,
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
        },
        troOnpress: () {
          Navigator.pushNamed(context, AccountScreen.id);
        },
      ),
    );
  }
}
