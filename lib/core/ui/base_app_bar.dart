import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ndf/core/theme/color/app_colors.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar(
      {Key? key,
      this.title,
      this.actions,
      this.backgroundColor,
      this.elevation = 0,
      this.statusColor,
      this.implyLeading = true,
      this.leading})
      : super(key: key);

  final Color? backgroundColor;
  final Color? statusColor;
  final double elevation;
  final bool implyLeading;

  final List<Widget>? actions;
  final Widget? leading;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        title: title,
        backgroundColor: backgroundColor ?? AppColors.of(context).primary,
        actions: actions ?? [],
        iconTheme: IconThemeData(color: AppColors.of(context).white),
        automaticallyImplyLeading: implyLeading,
        elevation: elevation,
        leading: leading,
        leadingWidth: 58,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: AppColors.of(context).primary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
