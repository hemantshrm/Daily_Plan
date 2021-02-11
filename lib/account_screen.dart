import 'package:flutter_app/ActivityScreen.dart';
import 'package:flutter_app/bottom_bar.dart';

import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'drawer_ui.dart';

class AccountScreen extends StatefulWidget {
  static String id = 'account_screen';
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        toolbarHeight: 65,elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: DrawerUI(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: ClipOval(child: Image.asset('images/logo.png',width: 50,
                height: 100,
                fit: BoxFit.contain,))
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: TypewriterAnimatedTextKit(
                speed: Duration(milliseconds: 100),
                repeatForever: false,
                totalRepeatCount: 4,
                text: ['Daily Plan'],
                textStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 45.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            MainButtons(
              colour: Colors.lightBlueAccent,
              onpressed: () {},
              title: 'Login',
            ),
            MainButtons(
              colour: Colors.blue,
              onpressed: () {},
              title: 'Register',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(
        actCol: Colors.black26,
        troCol: Colors.black,
        homeCol: Colors.black26,
        homeOnpress: () {
          Navigator.pushNamed(context, MyHomePage.id);
        },
        actonpress: () {
          Navigator.pushNamed(context, ActivityScreen.id);
        },
      ),
    );
  }
}

class MainButtons extends StatelessWidget {
  MainButtons({@required this.onpressed, this.colour, this.title});
  final Function onpressed;
  final Color colour;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
