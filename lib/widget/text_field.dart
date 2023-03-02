import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? icon;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 412.w,
      decoration: BoxDecoration(
        color: CustomColors.backgroundColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          autocorrect: true,
          controller: controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 30.w),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(color: CustomColors.textField),
              suffixIcon: Icon(
                icon,
                color: CustomColors.iconColor,
                size: 30.sp,
              )),
        ),
      ),
    );
  }
}
