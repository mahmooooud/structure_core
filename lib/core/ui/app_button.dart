import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/extension/context.dart';
import 'package:structure_core/core/theme/color/app_colors.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width,
    this.isTransparentBackground = false,
    this.enabled = true,
    this.color,
    this.textColor,
    this.borderColors,
    this.titleWidget,
    this.padding,
  }) : super(key: key);

  final String text;
  final Widget? titleWidget;
  final bool enabled;
  final VoidCallback? onPressed;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final bool isTransparentBackground;
  final Color? color;
  final Color? textColor;
  final Color? borderColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(vertical: 5.h),
      width: width ?? double.infinity,
      child: BouncingWidget(
        enable: enabled && onPressed != null,
        child: TextButton(
          style: Theme.of(context).textButtonTheme.style!.copyWith(
              foregroundColor: MaterialStateProperty.resolveWith(
            (_) {
              if (isTransparentBackground) {
                return Colors.transparent;
              }
              return AppColors.of(context).primaryLight;
            },
          ), backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (color != null) {
                return color;
              }
              if (borderColors == null) {
                if(isTransparentBackground){
                  return Colors.transparent;
                }
              }else{
                return color;
              }
              if (enabled) {
                return AppColors.of(context).primaryLight;
              } else {
                return AppColors.of(context).primaryLight.withOpacity(0.5);
              }
            },
          ), shape: MaterialStateProperty.resolveWith((states) {
            if (isTransparentBackground) {
              return RoundedRectangleBorder(
                  side: BorderSide(color: borderColors ?? AppColors.of(context).primary),
                  borderRadius: BorderRadius.circular(5.r));
            }
          })),
          onPressed: onPressed,
          child: titleWidget ??
              Text(
                text,
                style: context.textTheme.headline6!.copyWith(
                  color: isTransparentBackground
                      ? textColor ?? AppColors.of(context).primaryLight
                      : textColor ?? AppColors.of(context).white,
                  fontWeight: FontWeight.w500,
                ),
              ),
        ),
      ),
    );
  }
}

class BouncingWidget extends StatefulWidget {
  final Widget child;
  final bool enable;

  const BouncingWidget({
    Key? key,
    required this.child,
    this.enable = true,
  }) : super(key: key);

  @override
  State<BouncingWidget> createState() => _BouncingWidgetState();
}

class _BouncingWidgetState extends State<BouncingWidget>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void didUpdateWidget(BouncingWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enable != widget.enable) {
      if (widget.enable) {
        // _controller.forward();
      } else {
        // _controller.reverse();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
      lowerBound: 0.0,
      upperBound: 0.03,
    )..drive(CurveTween(curve: Curves.elasticIn));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTapCancel: () {
        widget.enable ? _controller.reverse() : null;
      },
      child: AnimatedBuilder(
          animation: _controller,
          child: widget.child,
          builder: (_, child) {
            _scale = 1 - _controller.value;
            return Transform.scale(
              scale: _scale,
              child: child,
            );
          }),
    );
  }

  void _tapDown(TapDownDetails details) {
    widget.enable ? _controller.forward() : null;
  }

  void _tapUp(TapUpDetails details) {
    widget.enable ? _controller.reverse() : null;
  }
}
