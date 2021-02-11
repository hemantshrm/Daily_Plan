import 'package:flutter/material.dart';

class DayDate extends StatelessWidget {
  DayDate({this.date,this.day,this.textcolor,this.colour});
 final String day , date;
 final Color colour,textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: colour,),
      child: Column(
        children: [
          Text(day,
              style: TextStyle(color: textcolor, fontSize: 22.0)),
          Text(date,
              style: TextStyle(color: textcolor, fontSize: 20.0,fontWeight: FontWeight.w900)),
          SizedBox(height: 5,),
          Icon(Icons.circle,color: Colors.white,size: 10,)
        ],
      ),
    );
  }
}
