import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zomato/Controller/controller.dart';
import 'package:zomato/Utils/common_button.dart';
import 'package:zomato/Utils/textfield.dart';

import '../Routs/routs.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController=Get.find();
 final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: mediaQuery.size.height*0.25,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
        Form(
          key: key,
          child: CommonTextField(name: "Enter Your Email",controller:loginController.emailController,
          validator: (value)
          {
            if(value!.isEmpty){
              return "Please Enter The Email";
            }
          },),
        ),
          CommonTextField(name: "Enter Your Password",controller: loginController.passwordController,
          validator: (value)
          {
            if(value!.isEmpty)
              {
                return "Enter Your Password";
              }
          },),
          CommonButton(name: "Login",onpressed: (){
            if(key.currentState!.validate()){
              Get.toNamed(Routes.HOME_SCREEN_ROUTE);
            }

          },)
        ],
      ),
    );
  }
}
