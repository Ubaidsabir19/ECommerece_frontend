import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../providers/g_data_provider.dart';
import '../widget/custom_text.dart';
import '../widget/e_button_1.dart';
import '../widget/icon_button.dart';

class VistaScreen extends StatefulWidget {
  const VistaScreen({Key? key}) : super(key: key);

  @override
  State<VistaScreen> createState() => _VistaScreenState();
}

class _VistaScreenState extends State<VistaScreen> {
  @override
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
              child: Padding(
                padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 40.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CustomIconButton(
                              onPress: () {
                                Navigator.pop(context);
                              },
                              color: CustomColors.textColor,
                              icon: Icons.arrow_back,
                              size: 30,
                            ),
                            SizedBox(
                              width: 150.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.h),
                              child: Image.asset(
                                'images/bag.png',
                                height: 50.h,
                                color: CustomColors.textColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h),
                        CustomText(
                          text: Constants.mi,
                          color: CustomColors.textColor,
                          Size: 34.sp,
                          weight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                            height: 422.h,
                            child: globalData.items != null
                                ? ListView.builder(
                                    itemCount: globalData.items!.brand!.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 140.h,
                                        width: 412.w,
                                        child: Card(
                                          elevation: 0.0,
                                          color: CustomColors.backgroundColor,
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.r),
                                          ),
                                          child: ListTile(
                                            title: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Image.asset(
                                                  'images/shirt.png',
                                                  height: 120.h,
                                                  width: 110.h,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 15.h),
                                                      child: CustomText(
                                                        text: globalData.items!
                                                            .brand![index].name!
                                                            .toString(),
                                                        color: CustomColors
                                                            .textColor,
                                                        Size: 24.sp,
                                                        weight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    CustomText(
                                                      text: globalData
                                                          .items!
                                                          .brand![index]
                                                          .price![0]
                                                          .range!
                                                          .toString(),
                                                      color: CustomColors
                                                          .textColor,
                                                      Size: 24.sp,
                                                      weight: FontWeight.w400,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 20.w),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 35.h),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Center(
                                                        child: CustomIconButton(
                                                          onPress: () {
                                                            Provider.of<GlobalData>(
                                                                    context,
                                                                    listen:
                                                                        false)
                                                                .decrement(
                                                                    index);
                                                          },
                                                          color: CustomColors
                                                              .textColor,
                                                          icon: Icons
                                                              .minimize_outlined,
                                                        ),
                                                      ),
                                                      SizedBox(width: 20.w),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 16.h),
                                                        child: CustomText(
                                                          text:
                                                              '${globalData.items?.brand?[index].counter}',
                                                          color: CustomColors
                                                              .textColor,
                                                          Size: 24.sp,
                                                          weight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      SizedBox(width: 20.w),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 10.h),
                                                        child: Card(
                                                          elevation: 2,
                                                          color: CustomColors
                                                              .iconColor,
                                                          child:
                                                              CustomIconButton(
                                                            onPress: () {
                                                              Provider.of<GlobalData>(
                                                                      context,
                                                                      listen:
                                                                          false)
                                                                  .increment(
                                                                      index);
                                                            },
                                                            color: CustomColors
                                                                .backgroundColor,
                                                            icon: Icons.add,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : const CircularProgressIndicator()),
                        SizedBox(height: 25.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: Constants.product,
                                  color: CustomColors.textColor,
                                  Size: 24.sp,
                                  weight: FontWeight.w500,
                                ),
                                CustomIconButton(
                                  onPress: () {},
                                  color: CustomColors.textColor,
                                  icon: Icons.chevron_right_outlined,
                                )
                              ],
                            ),
                            SizedBox(height: 120.h),
                            CustomIconButton(
                              onPress: () {},
                              color: CustomColors.textColor,
                              icon: Icons.keyboard_arrow_up,
                              size: 30,
                            ),
                            CustomElevatedButton1(
                              text: Constants.buy,
                              size: 24.sp,
                              weight: FontWeight.w700,
                              color: CustomColors.backgroundColor,
                              bgColor: CustomColors.iconColor,
                              onPressed: () {
                                _showModalBottomSheet();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _showModalBottomSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.r),
        )),
        backgroundColor: CustomColors.backgroundColor,
        context: context,
        builder: (context) {
          return Container(
            height: 429.h,
            width: 462.w,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 10.w, right: 10.w, top: 15.h, bottom: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 4.h,
                    width: 60.w,
                    color: CustomColors.textColor,
                  ),
                  SizedBox(height: 15.h),
                  CustomText(
                    text: Constants.info,
                    color: CustomColors.textColor,
                    Size: 24.sp,
                    weight: FontWeight.w400,
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: CustomColors.iconColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Card(
                            elevation: 0.0,
                            color: CustomColors.iconColor,
                            child: Image.asset(
                              'images/dana.png',
                              height: 1.h,
                              width: 1.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        CustomText(
                          text:
                              '${Constants.qualiy}(${Provider.of<GlobalData>(context).Length()}) = ${Provider.of<GlobalData>(context).Price()}',
                          color: CustomColors.textColor,
                          Size: 20.sp,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: CustomColors.iconColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Card(
                            elevation: 0.0,
                            color: CustomColors.iconColor,
                            child: Image.asset(
                              'images/pocket.png',
                              height: 1.h,
                              width: 1.w,
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        CustomText(
                          text:
                              '${Constants.toll} = ${Provider.of<GlobalData>(context).Tax()}',
                          color: CustomColors.textColor,
                          Size: 20.sp,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: Container(
                      height: 3.h,
                      width: 410.w,
                      color: CustomColors.textField,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: Constants.total,
                          color: CustomColors.textColor,
                          Size: 24.sp,
                          weight: FontWeight.w500,
                        ),
                        CustomText(
                          text: '${Provider.of<GlobalData>(context).Price()}',
                          color: CustomColors.textColor,
                          Size: 24.sp,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  CustomElevatedButton1(
                    text: Constants.buy,
                    size: 24.sp,
                    weight: FontWeight.w700,
                    color: Colors.white,
                    bgColor: CustomColors.iconColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        });
  }
}
