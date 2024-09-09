import 'package:flutter/material.dart';


class CustomButtonContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget buttonWidget;
  final BoxDecoration? decoration;

  const CustomButtonContainer(this.buttonWidget,
      {required this.width, required this.height,this.decoration})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      padding: EdgeInsets.zero,
      child: buttonWidget,
    );
  }
}
