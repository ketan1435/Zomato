import 'package:flutter/material.dart';

import 'app_colors.dart';
class CommonTextField extends StatefulWidget {
  final String? name;
  final TextEditingController? controller;
  final String? Function(String?)?validator;
  const CommonTextField({super.key, this.name, this.controller, this.validator,});
  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}
class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: TextFormField(
          controller:widget.controller,
          validator:widget.validator,
          maxLines: 1,
          decoration: InputDecoration(
            labelText:widget.name??"Enter Your Details",labelStyle: TextStyle(color: AppColor.textfieldColor),
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color:AppColor.borderColor),
            ),
            enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color:AppColor.borderColor),
            ),
            focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color:AppColor.borderColor),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordTextfield extends StatefulWidget {
  final String? name;
  final TextEditingController? controller;
  final String? Function(String?)?validator;
  const PasswordTextfield({super.key, required this.name,  this.controller, this.validator});
  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}
class _PasswordTextfieldState extends State<PasswordTextfield> {
  TextEditingController passController = TextEditingController();
  TextEditingController cPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: TextFormField(
          controller: widget.controller,
          //obscureText: true,
          maxLines: 1,
          decoration: InputDecoration(
            suffixIcon:Icon(Icons.remove_red_eye),
            labelText:widget.name??"Enter Your Details",labelStyle: TextStyle(color: AppColor.textfieldColor),
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color:AppColor.borderColor),
            ),
            enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color:AppColor.borderColor),
            ),
            focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color:AppColor.borderColor),
            ),
          ),

        ),
      ),
    );
  }
}
