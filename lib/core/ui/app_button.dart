import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width,
    this.isTransparentBackground = false,
    this.enabled = true,
    this.color,
  }) : super(key: key);

  final String text;
  final bool enabled;
  final VoidCallback? onPressed;
  final double? width;
  final bool isTransparentBackground;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      width: width ?? 310.w,
      child: BouncingWidget(
        enable: enabled && onPressed != null,
        child: TextButton(
          style: Theme.of(context).textButtonTheme.style!.copyWith(
            foregroundColor: MaterialStateProperty.resolveWith(
              (_) {
                if (isTransparentBackground) {
                  return Colors.transparent;
                }
                return Theme.of(context).colorScheme.primary;
              },
            ),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (color != null) {
                  return color;
                }
                if (isTransparentBackground) {
                  return Colors.transparent;
                }
                if (enabled) {
                  return Theme.of(context).colorScheme.primary;
                } else {
                  return Colors.grey.withOpacity(0.12);
                }
              },
            ),
            shape: MaterialStateProperty.resolveWith((states) {
              if (isTransparentBackground) {
                return  RoundedRectangleBorder(side: BorderSide(
                    color: Theme.of(context).colorScheme.primary
                ),
                borderRadius: BorderRadius.circular(5)
                );
              }
            })
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline6!.copyWith(
              color: isTransparentBackground
                  ? Theme.of(context).colorScheme.onPrimary
                  : (enabled
                      ? Colors.white
                      : Colors.grey.withOpacity(0.4)),
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
