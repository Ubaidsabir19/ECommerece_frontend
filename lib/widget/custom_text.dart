import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    required this.color,
    required this.Size,
    required this.weight,
  }) : super(key: key);
  final String text;
  final Color color;
  final double Size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: Size,
        fontWeight: weight,
      ),
    );
  }
}
