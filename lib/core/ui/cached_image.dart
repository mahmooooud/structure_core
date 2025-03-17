import 'package:ndf/core/common/extension/context.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ndf/core/theme/color/app_colors.dart';

class CachedImage extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  final double? height, width, borderWidth;
  final BorderRadius? borderRadius;
  final ColorFilter? colorFilter;
  final Alignment? alignment;
  final Widget? child;
  final Widget? placeHolder;
  final Color? borderColor;
  final Color? bgColor;
  final BoxShape? boxShape;
  final bool haveRadius;

  const CachedImage(
      {Key? key,
      required this.url,
      this.fit,
      this.width,
      this.height,
      this.placeHolder,
      this.borderRadius,
      this.colorFilter,
      this.alignment,
      this.child,
      this.boxShape,
      this.borderColor,
      this.borderWidth,
      this.bgColor,
      this.haveRadius = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor ?? AppColors.of(context).primary.withOpacity(.5),
          borderRadius:
              haveRadius ? borderRadius ?? BorderRadius.circular(0) : null,
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 1),
          shape: boxShape ?? BoxShape.rectangle,
        ),
        child: Stack(
          children: [
            placeHolder ?? child ?? Container(),
            placeHolder ?? Container(),
          ],
        ),
      );
    }
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: imageProvider,
              fit: fit ?? BoxFit.fill,
              colorFilter: colorFilter),
          borderRadius:
              haveRadius ? borderRadius ?? BorderRadius.circular(0) : null,
          shape: boxShape ?? BoxShape.rectangle,
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 1),
        ),
        alignment: alignment ?? Alignment.center,
        child: child,
      ),
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius:
              haveRadius ? borderRadius ?? BorderRadius.circular(0) : null,
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 1),
          shape: boxShape ?? BoxShape.rectangle,
          color: bgColor ?? AppColors.of(context).primary.withOpacity(.5),
        ),
        child: SpinKitFadingCircle(
          color: AppColors.of(context).primary,
          size: 30.0,
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor ?? AppColors.of(context).primary.withOpacity(.5),
          borderRadius:
              haveRadius ? borderRadius ?? BorderRadius.circular(0) : null,
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 1),
          shape: boxShape ?? BoxShape.rectangle,
        ),
        child: Stack(
          children: [
            placeHolder ?? child ?? Container(),
            placeHolder ?? Container(),
          ],
        ),
      ),
    );
  }
}

class PlaceHolderWidget extends StatelessWidget {
  final String? placeHolder;
  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;
  const PlaceHolderWidget(
      {Key? key,
      this.placeHolder,
      this.width,
      this.height,
      this.color,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color ?? context.colors.grey, shape: BoxShape.circle),
      child: child,
    );
  }
}
