import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widget/custom_text.dart';
import '../widget/icon_button.dart';
import '../widget/list_view_clickable.dart';
import '../widget/list_view_clickable_1.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                    child: Row(
                      children: [
                        CustomIconButton(
                          onPress: () {},
                          color: CustomColors.listColor,
                          icon: Icons.arrow_back,
                          size: 30,
                        ),
                        SizedBox(width: 150.w),
                        Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/circle.png",
                                height: 30.h,
                                width: 30.w,
                              ),
                              SizedBox(height: 5.h),
                              Image.asset(
                                "images/bcircle.png",
                                height: 30.h,
                                width: 50.w,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    text: Constants.profile,
                    color: CustomColors.listColor,
                    Size: 34.sp,
                    weight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200.r),
                    child: Image.asset(
                      "images/man.png",
                      height: 360.h,
                      width: 240.w,
                      fit: BoxFit.cover, //change image fill type
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ListButton(
                    icon: Icons.favorite,
                    color: CustomColors.listColor,
                    text: Constants.fav,
                    size: 24.sp,
                    weight: FontWeight.w700,
                    onPressed: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: ListButton(
                      icon: Icons.shopping_bag,
                      color: CustomColors.listColor,
                      text: Constants.compras,
                      size: 24.sp,
                      weight: FontWeight.w700,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: ListButton1(
                      color: CustomColors.listColor,
                      text: Constants.adjust,
                      size: 24.sp,
                      weight: FontWeight.w700,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: ListButton(
                      color: CustomColors.listColor,
                      icon: Icons.chat_bubble,
                      iconSize: 25.sp,
                      text: Constants.technical,
                      size: 24.sp,
                      weight: FontWeight.w700,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
