import 'package:flutter/material.dart';
import 'package:flutter_lesson_10/home/widgets/border_widget.dart';
import 'package:flutter_lesson_10/ui/input_screen/input_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InputScreen();
  }
}
