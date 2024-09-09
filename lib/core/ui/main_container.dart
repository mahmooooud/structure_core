import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainContainer extends StatelessWidget {
  MainContainer(
      {Key? key,
        this.child,
        this.borderRadius,
        this.color,
        this.height,
        this.shadowColorGrey,
        this.width,
        this.border,
        this.offset1,
        this.padding,
        this.margin,
        this.offset2,
        this.elevation = true,
        this.decoration,
        this.blurR})
      : super(key: key);
  Widget? child;
  BorderRadius? borderRadius;
  double? height;
  double? width;
  double? blurR;
  Color? color;
  Color? shadowColorGrey;
  Border? border;
  Offset? offset1;
  Offset? offset2;
  BoxDecoration? decoration;

  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  final bool? elevation;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      margin: margin,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: height,
      width: width ?? double.infinity,
      decoration: decoration ??
          BoxDecoration(
              color: color ?? Colors.white,
              border: border,
              borderRadius: border != null
                  ? null
                  : borderRadius ?? BorderRadius.circular(8.r),
              boxShadow: elevation == null
                  ? []
                  : [
                BoxShadow(
                    color: Theme.of(context).colorScheme.tertiary.withOpacity(.2),
                    spreadRadius: 0,
                    offset: const Offset(0, 12),
                    blurRadius: blurR ?? 29),
              ]),
      child: child,
    );
  }
}
