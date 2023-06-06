import 'package:flutter/material.dart';
import 'package:flutter_lesson_10/ui/input_screen/input_screen.dart';
import 'package:flutter_lesson_10/ui/oplata_screen/widget/get_text_button.dart';
import 'package:flutter_lesson_10/utils/app_colors.dart';
import 'package:flutter_lesson_10/utils/app_icons.dart';
import 'package:flutter_lesson_10/widget/input_widget.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_151418,
      appBar: AppBar(
        backgroundColor: AppColors.C_151418,
        elevation: 0,
        leading: Padding(
          padding:  EdgeInsets.only(left: 15),
          child: Ink(
            width: width*(30/375),
            height: height*(20/812),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient:  LinearGradient(
                    colors: [
                      AppColors.C_E1D24A,
                      AppColors.C_C69223
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return InputScreen();
                    },
                  ),
                );
              },
              child: Center(
                child: SvgPicture.asset(AppIcons.arrow_back),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Детали заказа",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: AppColors.C_FFFFFF),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * (48 / 812),
          ),
          GlobalInputWidget(
            image: AppIcons.burger,
            title: "Чикен Бургер",
            subTitle: "Изящный бургер",
            score: "₽160",
            iconPlus: AppIcons.plus,
            number: "1",
            iconMinus: AppIcons.minus,
            total: 1,
          ),
          SizedBox(
            height: height * (21 / 812),
          ),
          GlobalInputWidget(
            image: AppIcons.cartofel,
            title: "Картошка Фри",
            subTitle: "Хрустят отлично",
            score: "₽100",
            iconPlus: AppIcons.plus,
            number: "1",
            iconMinus: AppIcons.minus,
            total: 1,
          ),
          SizedBox(
            height: height * (21 / 812),
          ),
          GlobalInputWidget(
            image: AppIcons.cartofel,
            title: "коктейль",
            subTitle: "Отлично подойдет",
            score: "₽120",
            iconPlus: AppIcons.plus,
            number: "1",
            iconMinus: AppIcons.minus,
            total: 2,
          ),
          SizedBox(
            height: height * (53 / 812),
          ),
          GetTextButton(),
          SizedBox(height: height * (20/812),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(AppIcons.home_row),
              SvgPicture.asset(AppIcons.koshelok),
              Container(
                width: width * (40 / 375),
                height: height * (40 / 812),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [AppColors.C_C69223, AppColors.C_E1D24A],
                    )),
                child: Center(child: SvgPicture.asset(AppIcons.korzinka)),
              ),
              SvgPicture.asset(AppIcons.serdsa),
              SvgPicture.asset(AppIcons.smile),
            ],
          )
        ],
      ),
    );
  }
}
