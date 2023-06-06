import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_colors.dart';



class InputLogin extends StatelessWidget {
   InputLogin({required this.icon1,required this.title,required this.icon2,required this.isPassword,required this.type,Key? key}) : super(key: key);

TextInputType type;
String title;
String icon1;
String icon2;
bool isPassword;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * (319/375),
      height:  height * (50/812),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        keyboardType: type,
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 25),
          hintText: title,
          prefixIcon: Padding(padding: EdgeInsets.all(18),
          child: SvgPicture.asset(icon1),),
          suffixIcon: Padding(
            padding: EdgeInsets.all(18),
              child: SvgPicture.asset(icon2),
          ),
      enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
      width: 1,
          color: AppColors.C_22222A
      )
      ),
      disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
      width: 1,
      color: AppColors.C_22222A
      )
      ),
      errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
      width: 1,
      color: AppColors.C_22222A
      )
      ),
      focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
      width: 1,
      color: AppColors.C_22222A

      )
        ),
        )
      ),
    );
  }
}
