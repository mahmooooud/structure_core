import 'dart:io';
import 'package:ndf/core/lib/blob_attachment/data/model/blob_file_model.dart';
import 'package:ndf/core/ui/attachment_cell.dart';
import 'package:ndf/core/utils/enum.dart';
import 'package:ndf/core/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadAttachmentWidget extends StatelessWidget {
  final GenericBloc<List<BlobFileModel?>>? attachmentsBloc;
  final Function() onTap;
  final GenericBloc<bool>? showError;
  final bool attachmentIsOptional;
  final String? title;
  final String? fileLimit;
  const UploadAttachmentWidget(
      {super.key,
      this.attachmentsBloc,
      required this.onTap,
      this.attachmentIsOptional = false,
      this.showError,
      this.fileLimit,
      this.title});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<BlobFileModel?>>,
        GenericState<List<BlobFileModel?>>>(
      bloc: attachmentsBloc,
      builder: (context, state) {
        return Column(
          children: [
            Visibility(
              visible: (state.data?.length ?? 0) < 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title ?? "",
                    textStyle: context.textTheme.bodySmall!
                        .copyWith(color: context.colors.titleGrey),
                  ),
                  Gaps.vGap8,
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius:
                            BorderRadius.circular(RadiusEnum.radius_xl),
                        border: Border.all(
                            width: 1, color: context.colors.borderGrey)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgAssets.getWidget(Res.upload_attachment,
                            height: 40.h, width: 40.w, fit: BoxFit.cover),
                        Gaps.vGap12,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              Translate.s.click_to_upload,
                              textStyle: context.textTheme.bodySmall!.copyWith(
                                  color: context.colors.primary,
                                  fontWeight: FontWeight.w600),
                            ),
                            Gaps.hGap4,
                            CustomText(
                              Translate.s.image_for_your_location_or_home,
                              textStyle: context.textTheme.displaySmall!
                                  .copyWith(
                                      color: context.colors.titleGrey,
                                      fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Gaps.vGap4,
                        CustomText(
                          " PNG, JPG  (max. ${fileLimit}mb)",
                          textStyle: context.textTheme.displaySmall!.copyWith(
                              color: context.colors.darkGrey,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ).press(onTap: () {
                onTap.call();
              }),
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 20.r),
              shrinkWrap: true,
              itemCount: state.data?.length ?? 0,
              separatorBuilder: (context, index) => Gaps.vGap8,
              itemBuilder: (context, index) {
                // String fileSize = await getFileSize(state.data?[index]?.path ?? "",2);
                return AttachmentCell(
                  file: state.data?[index]?.file ?? File(""),
                  isPdf: p
                      .extension(state.data?[index]?.file?.path ?? "")
                      .contains("pdf"),
                  fileSize: state.data?[index]?.size ?? '',
                  onRemove: () {
                    state.data?.removeWhere(
                        (element) => state.data?.indexOf(element) == index);
                    attachmentsBloc?.onUpdateData((state.data));
                  },
                );
              },
            )
          ],
        );
      },
    );
  }
}
