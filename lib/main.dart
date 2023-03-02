import 'package:e_commerece_store/providers/g_data_provider.dart';
import 'package:e_commerece_store/widget/Nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GlobalData>(
      create: (BuildContext context) {
        return GlobalData();
      },
      child: ScreenUtilInit(
        designSize: const Size(462, 1000),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: BottomNavigation(),
          );
        },
      ),
    );
  }
}
