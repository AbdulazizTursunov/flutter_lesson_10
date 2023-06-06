import 'package:flutter/material.dart';

class ButtonKnopka extends StatelessWidget {
   ButtonKnopka({required this.color, required this.number,Key? key}) : super(key: key);
  String number;
  Color color;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Container(
      margin: EdgeInsets.only( left: 12,right: 12),
      width: width * (64/375),
      height: height * (64/812),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFFFFFFF),
      ),
      child: Center(
        child: Text(
         number,
          style: TextStyle(color: color,fontSize: 20),
        ),
      ),
    );
  }
}
