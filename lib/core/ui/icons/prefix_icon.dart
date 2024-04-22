import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrefixIcon extends StatelessWidget {
  final double size;
  final Color color;
  final String iconPath;

  const PrefixIcon({Key? key, required this.size, required this.iconPath, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(iconPath.toLowerCase().endsWith('svg'));
    return SizedBox(
      height: size,
      width: size,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox.square(
            dimension: size,
            child: SvgPicture.asset(
              iconPath,
              width: size,
              height: size,
              color: color,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
