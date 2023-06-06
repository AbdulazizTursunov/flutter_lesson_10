import 'package:flutter/material.dart';
import 'package:flutter_lesson_10/utils/app_colors.dart';

class GetTextButton extends StatelessWidget {
  const GetTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(

width: double.infinity,
      height:  height * (180/812),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30)),
        color: AppColors.C_18171C
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:16),
        child: Column(

          children: [
            Expanded(
              child: Row(
                children: [Text('Стоимость всех товаров',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.C_FFFFFF),),
                  SizedBox(width: width * (130/375),),
                  Text('₽380',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.C_FFFFFF),),
                ],),),
            SizedBox(height: height * (14/812),),
            Expanded(
              child: Row(
                children: [Text('Стоимость всех товаров',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.C_FFFFFF),),
                  SizedBox(width: width * (130/375),),
                  Text('₽380',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.C_FFFFFF),),
                ],),),
            SizedBox(height: height * (14/812),),
            Expanded(
              child: Row(
                children: [Text('Стоимость всех товаров',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.C_FFFFFF),),
                  SizedBox(width: width * (130/375),),
                  Text('₽380',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.C_FFFFFF),),
                ],),),
            Container(
              height: height*44/812,
              width: width*280/375,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(colors: [Color(0xFFE1D24A),Color(0xFFC69223)]),
              ),
              child: Center(child: Text('Оплатить',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
            ),
          ],
        ),
      ),
    );
  }
}
