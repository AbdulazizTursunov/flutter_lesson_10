import 'package:flutter/material.dart';
import 'package:flutter_lesson_10/auth/input_login_password/input_login.dart';
import 'package:flutter_lesson_10/ui/oplata_screen/login_screen.dart';
import 'package:flutter_lesson_10/utils/app_colors.dart';
import 'package:flutter_lesson_10/utils/app_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_6C7072,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * (80 / 812),
                ),
                Text(
                  "BURGER BAR",
                  style: TextStyle(
                    fontSize: 52,
                    fontFamily: "ARCENA",
                    color: AppColors.C_FFFFFF,
                  ),
                ),
                SizedBox(
                  height: height * (80 / 812),
                ),
                Text(
                  "Войдите в свой профиль",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                    color: AppColors.C_FFFFFF,
                  ),
                ),
                Text(
                  "Войдите, чтобы продолжить",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: AppColors.C_6C7072,
                  ),
                ),
                SizedBox(
                  height: height * (48 / 812),
                ),
                InputLogin(
                    icon1: AppIcons.paper,
                    title: "maksimbest@mail.ru",
                    icon2: "",
                    isPassword: false,
                    type: TextInputType.emailAddress),
                SizedBox(
                  height: height * (21 / 812),
                ),
                InputLogin(
                    icon1: AppIcons.security,
                    title: "..........",
                    icon2: AppIcons.eye_of,
                    isPassword: true,
                    type: TextInputType.visiblePassword),
                SizedBox(
                  height: height * (33 / 812),
                ),
                Text(
                  "Войдите, чтобы продолжить",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Inter",
                    color: AppColors.C_FFFFFF,
                  ),
                ),
                SizedBox(
                  height: height * (45 / 812),
                ),
                Row(
                  children: [
                    Container(
                        margin:const EdgeInsets.only(left: 25),
                        width: width * (153 / 375),
                        height: height * (56 / 812),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.C_22222A),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppIcons.facebook,
                              width: width * (24 / 375),
                              height: height * (24 / 812),
                            ),
                            SizedBox(
                              width: width * (12 / 375),
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  color: AppColors.C_FFFFFF,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: width * (15 / 375),
                    ),
                    Container(
                        margin:const EdgeInsets.only(right: 28),
                        width: width * (153 / 375),
                        height: height * (56 / 812),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.C_22222A),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppIcons.google,
                              width: width * (24 / 375),
                              height: height * (24 / 812),
                            ),
                            SizedBox(
                              width: width * (12 / 375),
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: AppColors.C_FFFFFF,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: height * (44 / 812),
                ),
                GradientText("Забыли пароль?",
                    style:const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                    ),
                    colors: [AppColors.C_C69223, AppColors.C_E1D24A]),
                SizedBox(
                  height: height * (32 / 812),
                ),
                Container(
                  margin:const EdgeInsets.only(bottom: 90),
                  width: width * (327 / 375),
                  height: height * (48 / 812),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        colors: [AppColors.C_C69223, AppColors.C_E1D24A]),
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                    ),
                    child:const Text("Войти",style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 14,
                      color: Colors.black
                    ),),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
