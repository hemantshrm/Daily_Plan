import 'package:flutter/material.dart';
import 'bottom_bar.dart';

class YourActivity extends StatefulWidget {
  static String id = 'your_activity';
  @override
  _YourActivityState createState() => _YourActivityState();
}

class _YourActivityState extends State<YourActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Your Activity',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(tag: 'book',
                        child: Icon(
                      Icons.book,
                      size: 150,
                    )),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Writing',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Assignment',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 40),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Starting in',
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white38),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('00:50:00',
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900))
                                ],
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 25,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xff22222E),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
