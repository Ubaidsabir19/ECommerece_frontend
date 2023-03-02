import 'package:flutter/material.dart';

class CustomElevatedButton2 extends StatelessWidget {
  const CustomElevatedButton2(
      {Key? key, required this.onChanged, this.child, this.value})
      : super(key: key);

  final Function onChanged;
  final Widget? child;
  final bool? value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged();
      },
      child: child,
    );
  }
}
