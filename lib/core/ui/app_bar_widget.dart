import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import 'package:structure_core/core/common/gaps.dart';

import '../datasource/isp_helper.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool hasBack;
  final bool isGuard;
  final String? backTitle;
  final bool centerTitle;
  final List<Widget>? action;
  final Function()? onPop;
  final Color? backgroundColor;
  final Color? titleColor;
  final double? height;
  final TextStyle? textStyle;

  final Widget? icon;
  final Widget? leadingicon;
  const AppBarWidget(
      {Key? key,
      this.title,
      this.hasBack = true,
      this.centerTitle = true,
      this.action,
      this.onPop,
      this.backgroundColor = Colors.transparent,
      this.titleColor,
      this.icon = Gaps.empty,
      this.backTitle,
      this.height,
      this.textStyle,
      this.leadingicon,
      this.isGuard = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var appConfig = Provider.of<AppConfig>(context).currentThemeEnum;
    return AppBar(
      //toolbarHeight: 100.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 5,
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leadingicon ??
                (hasBack
                    ? Padding(
                        padding: EdgeInsetsDirectional.only(start: 10.h),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Theme.of(context).colorScheme.primary,
                            size: 22.0,
                          ),
                        ),
                      )
                    : const SizedBox(
                        width: 10,
                      )),
          ],
        ),
      ),

      actions: [
        InkWell(
          onTap: () async{},
          child: Row(
            children: action ?? [],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(height != null ? height!.toDouble() : 70.h);
}
