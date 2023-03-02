import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.icon,
    required this.onPress,
    this.color,
    this.size,
  }) : super(key: key);
  final IconData? icon;
  final Function onPress;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onPress();
        },
        child: Icon(
          icon,
          color: color,
          size: size,
        ));
  }
}
