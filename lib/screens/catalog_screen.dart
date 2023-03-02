import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/g_data_provider.dart';
import '../widget/Nav_bar.dart';
import '../widget/custom_text.dart';
import '../widget/e_button_2.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  void initState() {
    Provider.of<GlobalData>(context, listen: false).readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalData>(
      builder: (BuildContext context, globalData, Widget? child) {
        return Scaffold(
          backgroundColor: CustomColors.backgroundColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 35.h, left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'images/img.png',
                          height: 39.h,
                          width: 27.w,
                        ),
                      ),
                      SizedBox(
                        height: 33.h,
                      ),
                      CustomText(
                        text: Constants.discover,
                        color: CustomColors.textColor,
                        Size: 34.sp,
                        weight: FontWeight.w700,
                      ),
                      SizedBox(height: 20.h),
                      CustomText(
                        text: Constants.category,
                        color: CustomColors.textColor,
                        Size: 24.sp,
                        weight: FontWeight.w700,
                      ),
                      SizedBox(height: 20.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomElevatedButton2(
                              onChanged: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => BottomNavigation()));
                              },
                              child: Container(
                                height: 70.h,
                                width: 145.w,
                                decoration: BoxDecoration(
                                  color: CustomColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                      width: 1.w,
                                      color: CustomColors.textColor),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: CustomColors.card,
                                      ),
                                      child: Card(
                                        color: CustomColors.card,
                                        elevation: 0,
                                        child: Image.asset(
                                          'images/shoes.png',
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                      ),
                                    ),
                                    CustomText(
                                      text: Constants.ropa,
                                      color: CustomColors.textColor,
                                      Size: 16.sp,
                                      weight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            CustomElevatedButton2(
                              onChanged: () {},
                              child: Card(
                                elevation: 3.0,
                                color: CustomColors.backgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Container(
                                  height: 70.h,
                                  width: 145.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: CustomColors.card,
                                        ),
                                        child: Card(
                                          color: CustomColors.card,
                                          elevation: 0,
                                          child: Image.asset(
                                            'images/ball.png',
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                        ),
                                      ),
                                      CustomText(
                                        text: Constants.deporte,
                                        color: CustomColors.textColor,
                                        Size: 16.sp,
                                        weight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            CustomElevatedButton2(
                              onChanged: () {},
                              child: Container(
                                height: 70.h,
                                width: 145.w,
                                decoration: BoxDecoration(
                                  color: CustomColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                      width: 1.w,
                                      color: CustomColors.textColor),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: CustomColors.card,
                                      ),
                                      child: Card(
                                        color: CustomColors.card,
                                        elevation: 0,
                                        child: Image.asset(
                                          'images/game.png',
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                      ),
                                    ),
                                    CustomText(
                                      text: Constants.Jue,
                                      color: CustomColors.textColor,
                                      Size: 16.sp,
                                      weight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        height: 1900.h,
                        child: globalData.items != null
                            ? GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 20,
                                  crossAxisSpacing: 8,
                                  childAspectRatio: 0.75,
                                ),
                                itemCount: globalData.items!.brand!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GridTile(
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 14.h, bottom: 5.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Container(
                                                height: 166.h,
                                                width: 166.w,
                                                decoration: BoxDecoration(
                                                  color:
                                                      CustomColors.background,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.r),
                                                ),
                                                child: Image.asset(
                                                  'images/bg.png',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.w, right: 5.w),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomText(
                                                        text: globalData.items!
                                                            .brand![index].name!
                                                            .toString(),
                                                        color: CustomColors
                                                            .textColor,
                                                        Size: 16.sp,
                                                        weight: FontWeight.w500,
                                                      ),
                                                      CustomText(
                                                        text: globalData
                                                            .items!
                                                            .brand![index]
                                                            .price![0]
                                                            .range!
                                                            .toString(),
                                                        color:
                                                            CustomColors.price,
                                                        Size: 16.sp,
                                                        weight: FontWeight.w500,
                                                      ),
                                                    ],
                                                  ),
                                                  IconButton(
                                                      icon: globalData
                                                              .items!
                                                              .brand![index]
                                                              .toggle
                                                          ? const Icon(
                                                              Icons.favorite,
                                                              color: CustomColors
                                                                  .iconColor,
                                                            )
                                                          : const Icon(
                                                              Icons
                                                                  .favorite_border_rounded,
                                                              color: CustomColors
                                                                  .iconColor,
                                                            ),
                                                      onPressed: () {
                                                        Provider.of<GlobalData>(
                                                                context,
                                                                listen: false)
                                                            .toggle(index);
                                                      }),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )
                            : CircularProgressIndicator(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
