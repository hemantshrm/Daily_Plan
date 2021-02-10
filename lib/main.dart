import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Upper_Icon.dart';
import 'bottom_bar.dart';
import 'contants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> _colors = [Colors.blueGrey, Colors.white];
  List<double> _stops = [0.0, 0.9];
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
                        //Image.asset('images/main.png',scale: 5.9,)
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('Activity',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Text('See all',
                          style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffcecbcb))),
                    ),
                  ],
                ), // Activity and see all
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('images/stand.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Writing Assignments',
                              style: TextStyle(
                                fontSize: 19.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text('3 of 5 completed',
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
                    gradient: LinearGradient(
                      colors: _colors,
                      stops: _stops,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('images/standing.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Water the Plants',
                              style: TextStyle(
                                fontSize: 19.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text('3 of 5 completed',
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
                    gradient: LinearGradient(
                      colors: _colors,
                      stops: _stops,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
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
            onPressed: () {},
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
