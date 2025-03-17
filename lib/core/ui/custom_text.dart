import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int maxLines;
  final TextStyle textStyle;
  final TextAlign textAlign;

  const CustomText(this.text,
      {Key? key,
      this.textStyle = const TextStyle(
        //fontFamily: AppTheme.fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      this.maxLines = 2,
      this.textAlign = TextAlign.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
      textScaler: const TextScaler.linear(1.1),
    );
  }
}
