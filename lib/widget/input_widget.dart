import 'package:flutter/material.dart';
import 'package:flutter_lesson_10/utils/app_colors.dart';
import 'package:flutter_lesson_10/utils/app_icons.dart';
import 'package:flutter_svg/svg.dart';

class GlobalInputWidget extends StatelessWidget {
  GlobalInputWidget(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.score,
      required this.iconPlus,
      required this.number,
      required this.iconMinus,
      required  int? total,
      Key? key})
      : super(key: key);

  String image;
  String title;
  String subTitle;
  String score;
  String iconPlus;
  String iconMinus;
  String number;
  int? total;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: height * (343 / 812),
      height: width * (96 / 375),
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.C_22222A),
      child: Row(
        children: [
         Image.asset(image,width: width * (88/375),height:  height * (68/812),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColors.C_FFFFFF),),
              SizedBox(height: height * (10/812),),
              Text(subTitle,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: AppColors.C_6A6A6E),),
              SizedBox(height: height * (10/812),),
              Text(score,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.C_FFFFFF)),
            ],
          ),
          SizedBox(width: width * (24/375),),
          Center(
            child: Container(
              width: width * (90/375),
              height:  height * (34/812),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColors.C_19191D,
              ),child: Column(
              children: [Padding(
                padding: const EdgeInsets.all(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              SvgPicture.asset(iconPlus,width: width * (8/375),height: height * (16/812),),
                SizedBox(width: width * (16/375),),
                     Text(number,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: AppColors.C_FFFFFF),),
                    SizedBox(width: width * (16/375),),
                      SvgPicture.asset(iconMinus,width: width * (8/375),height: height * (16/812),),
                  ],
                ),
              )
              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}
