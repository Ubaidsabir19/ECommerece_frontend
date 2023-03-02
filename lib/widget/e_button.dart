import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final IconData? icon;
  final double? size;
  final Color? color;
  final Color? focusColor;
  final Color? bgColor;
  final double? iconSize;
  final FontWeight? weight;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.size,
    this.color,
    this.focusColor,
    this.bgColor,
    this.iconSize,
    this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      focusColor: focusColor,
      child: Card(
        elevation: 0,
        child: Container(
          height: 97.h,
          width: 412.w,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: color, size: iconSize),
                SizedBox(width: 50.w),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: size,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
