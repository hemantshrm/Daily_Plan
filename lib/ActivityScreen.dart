import 'package:flutter/material.dart';
import 'package:flutter_app/contants.dart';
import 'package:flutter_app/home_screen.dart';
import 'bottom_bar.dart';
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
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DayDate(date: '09',day: 'Mon',colour: Colors.white,textcolor: Colors.grey[300]),
                    DayDate(date: '10',day: 'Tue',colour: Colors.white,textcolor: Colors.grey,),
                    DayDate(date: '11',day: 'Wed',colour: Colors.black,textcolor: Colors.white),
                    DayDate(date: '12',day: 'Thr',colour: Colors.white,textcolor: Colors.grey),
                    DayDate(date: '13',day: 'Fri',colour: Colors.white,textcolor: Colors.grey[300]),
                  ],
                ),
                SizedBox(height: 30,),
                ActivitySeeAll,

              ],
            ),
          ),
        ),
      ),
    );
  }
}


