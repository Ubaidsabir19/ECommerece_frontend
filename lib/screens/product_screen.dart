import 'package:e_commerece_store/screens/vista_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widget/custom_text.dart';
import '../widget/e_button.dart';
import '../widget/e_button_2.dart';
import '../widget/icon_button.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 570.h,
                        width: 412.w,
                        child: Image.asset(
                          'images/bg.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20.w, right: 20.w, top: 33.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundColor: CustomColors.background,
                                  child: CustomIconButton(
                                    onPress: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icons.arrow_back_ios_new_rounded,
                                    size: 25,
                                    color: CustomColors.iconColor,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 40.h, left: 100.w, right: 100.w),
                                  child: Image.asset(
                                    'images/img.png',
                                    height: 55.h,
                                    width: 30.w,
                                    color: Colors.white,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 22,
                                  backgroundColor: CustomColors.background,
                                  child: CustomIconButton(
                                    onPress: () {},
                                    icon: Icons.favorite,
                                    size: 25,
                                    color: CustomColors.iconColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 200.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30.w, right: 25.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.h,
                                  child: Image.asset(
                                    'images/user.png',
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: Constants.camisas,
                                      color: CustomColors.backgroundColor,
                                      Size: 40.sp,
                                      weight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: 60.h,
                                      width: 60.h,
                                      child: Image.asset(
                                        'images/user1.png',
                                        height: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomText(
                                          text: Constants.$,
                                          color: CustomColors.backgroundColor,
                                          Size: 34.sp,
                                          weight: FontWeight.w600,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10.h),
                                          child: CustomText(
                                            text: Constants.t,
                                            color: CustomColors.backgroundColor,
                                            Size: 20.sp,
                                            weight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 60.h,
                                      width: 60.h,
                                      child: Image.asset(
                                        'images/user.png',
                                        height: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: CustomText(
                          text: Constants.del,
                          color: CustomColors.iconColor,
                          Size: 24.sp,
                          weight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/flag.png',
                            height: 24.h,
                            width: 24.w,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          CustomText(
                            text: Constants.t,
                            color: CustomColors.textColor,
                            Size: 16.sp,
                            weight: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 100.w,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'images/paint.png',
                                height: 24.h,
                                width: 24.w,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              CustomText(
                                text: Constants.v,
                                color: CustomColors.textColor,
                                Size: 16.sp,
                                weight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 50.h),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: Constants.description,
                              color: CustomColors.textColor,
                              Size: 24.sp,
                              weight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Center(
                              child: CustomText(
                                text: Constants.n,
                                color: CustomColors.textField,
                                Size: 16.sp,
                                weight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: CustomElevatedButton(
                    icon: Icons.shopping_bag,
                    color: Colors.white,
                    text: Constants.bolsa,
                    bgColor: CustomColors.navBar,
                    size: 24.sp,
                    weight: FontWeight.w700,
                    onPressed: () {
                      _showBottomSheet();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showBottomSheet() {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Container(
            height: 110.h,
            decoration: const BoxDecoration(
              color: CustomColors.bottomColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 50.w, right: 50.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/chair.png',
                    height: 59.h,
                    width: 60.w,
                  ),
                  CustomElevatedButton2(
                    onChanged: () {
                      Navigator.pop(context);
                    },
                    child: CustomText(
                      text: Constants.add,
                      color: CustomColors.backgroundColor,
                      Size: 20.sp,
                      weight: FontWeight.w500,
                    ),
                  ),
                  CustomIconButton(
                    onPress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const VistaScreen(),
                      ));
                    },
                    color: CustomColors.backgroundColor,
                    icon: Icons.arrow_forward_outlined,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
