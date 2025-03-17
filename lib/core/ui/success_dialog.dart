import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/ui/dialog_title.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog(
      {super.key,
      required this.title,
      this.msg,
      this.isDelete = false,
      this.isCart = false,
      this.onPressed,
      this.onCancel,
      this.actionTitle,
      this.icon,
      this.dialogTitle});

  final String title;
  final String? dialogTitle;
  final String? actionTitle;
  final String? msg;
  final String? icon;
  final bool? isDelete;
  final bool? isCart;
  final Function()? onPressed;
  final Function()? onCancel;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: context.colors.white, borderRadius: BorderRadius.circular(25)),
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          DialogTitleWidget(
            title: title,
            titleMsg: msg,
          ),
          Gaps.vGap14,
          SvgAssets.getWidget(Res.success,
              height: 180.h, width: 180.w, fit: BoxFit.contain)
        ],
      ),
    );
  }
}
