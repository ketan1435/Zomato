import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zomato/Controller/controller.dart';
import 'package:zomato/Pages/homescreen.dart';
import 'package:zomato/Utils/app_colors.dart';
import 'package:zomato/Utils/common_button.dart';
import 'package:zomato/Utils/textfield.dart';
import 'package:zomato/Utils/textstyle.dart';
class SineUpScreen extends StatefulWidget {
  const SineUpScreen({super.key});

  @override
  State<SineUpScreen> createState() => _SineUpScreenState();
}
class _SineUpScreenState extends State<SineUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController cPassController = TextEditingController();
  final GlobalKey<FormState> key1 = GlobalKey<FormState>();
  AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children:[
          Container(
            height: mediaQuery.size.height*0.25,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Form(
            key: key1,
              child: Column(
                children: [
                  CommonTextField(name: "Enter Your Name",controller:nameController,
                      validator: (value){
                       if(value!.isEmpty)
                         {
                           return "Please Enter Username";
                         }
                      },
                  ),
                  CommonTextField(name: "Enter Your Email",controller:emailController,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "Please Enter Email";
                      }
                    },),
                  PasswordTextfield(name: 'Enter Your Password',controller: passController,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "Please Enter Password";
                      }
                    },),
                  PasswordTextfield(name: 'Confirm Your Password',controller: cPassController,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "Please Confirm Your Password";
                      }
                    },),
                  CommonButton(name: "Resgister",onpressed: ()
                  {
                    if(key1.currentState!.validate())
                      {
                        Get.to(HomeScreen());
                      }
                  },),
                  SizedBox(height: 30,),
                  RichText(
                      text:TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an Account",style: TextHelper.h6
                          ),
                          TextSpan(
                              recognizer:TapGestureRecognizer()..onTap = (){Get.to(HomeScreen());},
                              text: "  Login Here",style: TextHelper.h6.copyWith(color: AppColor.buttonColor,fontSize:16)
                          )
                        ]
                      )
                   )
                ],
              )
          )
        ],
      ),
    );
  }
}
