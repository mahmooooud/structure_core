import 'package:ndf/core/utils/enum.dart';
import 'package:flutter/material.dart';

class ShowDialog {
  Future<T?> showTransparentDialog<T>({
    required BuildContext context,
    bool barrierDismissible = true,
    required WidgetBuilder builder,
  }) {
    final ThemeData? theme = Theme.of(context);
    return showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        final Widget pageChild = Builder(builder: builder);
        return SafeArea(
          child: Builder(builder: (BuildContext context) {
            return theme != null
                ? Theme(data: theme, child: pageChild)
                : pageChild;
          }),
        );
      },
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: const Color(0x00FFFFFF),
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: _buildMaterialDialogTransitions,
    );
  }

  Widget _buildMaterialDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ),
      child: child,
    );
  }

  Future<T?> showElasticDialog<T>(
      {required BuildContext context,
      bool barrierDismissible = true,
      required Widget builder,
      EdgeInsets? insetPadding}) {
    final ThemeData? theme = Theme.of(context);
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      builder: (BuildContext context) {
        return Dialog(
            insetPadding: insetPadding ?? const EdgeInsets.all(18),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(RadiusEnum.radius_lr)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: builder);
      },
    );
  }

  Widget _buildDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ),
      child: SlideTransition(
        position: Tween<Offset>(begin: const Offset(0.0, 0.3), end: Offset.zero)
            .animate(CurvedAnimation(
          parent: animation,
          curve: const ElasticOutCurve(0.85),
          reverseCurve: Curves.easeOutBack,
        )),
        child: child,
      ),
    );
  }
}
