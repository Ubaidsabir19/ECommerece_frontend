import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final IconData? icon;
  final double? size;
  final Color? color;
  final Color? focusColor;
  final Color? bgColor;
  final double? iconSize;
  final FontWeight? weight;

  const ListButton({
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
      child: Container(
        height: 97,
        width: 412,
        child: Padding(
          padding: EdgeInsets.only(right: 80.w, left: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, color: color, size: iconSize),
              //SizedBox(width: 30.w),
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
    );
  }
}
