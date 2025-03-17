import 'package:ndf/core/common/resource.dart';
import 'package:flutter/material.dart';

class FloatingButtonContainer extends StatelessWidget {
  const FloatingButtonContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 24),
      decoration: BoxDecoration(
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
              color: context.colors.black.withOpacity(.1),
              spreadRadius: 0,
              offset: const Offset(6, 2),
              blurRadius: 16),
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: child,
    );
  }
}
