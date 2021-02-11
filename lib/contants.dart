import 'package:flutter/material.dart';

const kmainBoxText = TextStyle(
    fontSize: 30.0, fontWeight: FontWeight.w700);

Widget ActivitySeeAll = Row(
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
);

