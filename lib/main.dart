import 'package:flutter/material.dart';
import 'package:flutter_lesson_10/home/home_screen.dart';

void main (){
  runApp(FullWidget());
}



class FullWidget extends StatefulWidget {
  const FullWidget ({Key? key}) : super(key: key);

  @override
  State<FullWidget> createState() => StateFullWidget();
}

class StateFullWidget extends State<FullWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomeScreen(),
    );
  }
}
