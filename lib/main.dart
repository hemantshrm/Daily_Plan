import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ActivityScreen.dart';
import 'package:flutter_app/account_screen.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/your_activity.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AccountScreen.id,
      routes: <String , WidgetBuilder>{
        ActivityScreen.id: (context) => ActivityScreen(),
        MyHomePage.id: (context) => MyHomePage(),
        AccountScreen.id: (context) => AccountScreen(),
        YourActivity.id: (context) => YourActivity(),

      }
    );
  }
}

