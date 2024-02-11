
import 'package:flutter/material.dart';
import 'package:zomato/Utils/app_colors.dart';
import 'package:zomato/Utils/textstyle.dart';
class CommonButton extends StatelessWidget {
  final String name;
  final Color? bgColor;
  final void Function()?onpressed;
  const CommonButton({super.key,required this.name,this.bgColor, this.onpressed});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Center(
      child: GestureDetector(
        onTap:onpressed,
        child: Container(
          margin: EdgeInsets.only(top: 30),
          height:mediaQuery.size.height*0.048,
          width: mediaQuery.size.width*0.30,
          decoration: BoxDecoration(
            color: bgColor??AppColor.buttonColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
              child: Text(name,style: TextHelper.h1.copyWith(fontSize: 18,color:Colors.white),)),
          ),
      ),
    );
  }
}
