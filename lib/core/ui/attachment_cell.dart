import 'dart:io';
import 'package:ndf/core/ui/main_container.dart';
import 'package:ndf/core/utils/enum.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/extension/widget_extension.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';
import 'package:open_file/open_file.dart';

class AttachmentCell extends StatelessWidget {
  final File file;
  final bool isPdf;
  final String fileSize;
  final Function() onRemove;
  const AttachmentCell(
      {super.key,
      required this.file,
      required this.isPdf,
      required this.fileSize,
      required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusEnum.radius_xl),
        border: Border.all(color: context.colors.borderGrey),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: isPdf
                ? Center(
                    child: SvgAssets.getWidget(Res.attachment_icon,
                        height: 40, width: 40))
                : Image.file(
                    file,
                    height: 45.h,
                    width: 45.w,
                  ),
          ).press(onTap: () {
            OpenFile.open(file.path ?? "");
          }),
          Gaps.hGap16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  basename(file.path),
                  textStyle: context.textTheme.bodySmall!
                      .copyWith(color: context.colors.titleBlack, height: 1),
                  textAlign: TextAlign.start,
                  maxLines: 2,
                ),
                Gaps.vGap5,
                CustomText(
                  fileSize,
                  textAlign: TextAlign.start,
                  textStyle: context.textTheme.bodySmall!
                      .copyWith(color: context.colors.titleGrey),
                ),
              ],
            ),
          ),
          Gaps.hGap15,
          SvgAssets.getWidget(
            Res.trash,
          ).press(onTap: onRemove),
        ],
      ),
    );
  }
}
