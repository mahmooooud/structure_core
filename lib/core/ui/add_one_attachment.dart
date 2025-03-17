import 'dart:io';
import 'package:ndf/core/lib/blob_attachment/data/model/blob_file_model.dart';
import 'package:ndf/core/ui/attachment_cell.dart';
import 'package:ndf/core/utils/enum.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';

class UploadOneAttachmentWidget extends StatelessWidget {
  final GenericBloc<List<BlobFileModel?>>? attachmentsBloc;
  final Function() onTap;
  final String? fileLimit;

  final GenericBloc<bool>? showError;
  final String title;
  final bool attachmentIsOptional;
  const UploadOneAttachmentWidget(
      {super.key,
      this.attachmentsBloc,
      required this.onTap,
      this.attachmentIsOptional = false,
      this.showError,
      required this.title,
      this.fileLimit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<BlobFileModel?>>,
        GenericState<List<BlobFileModel?>>>(
      bloc: attachmentsBloc,
      builder: (context, state) {
        return Column(
          children: [
            Visibility(
              replacement: (state.data?.isEmpty ?? true)
                  ? Gaps.empty
                  : AttachmentCell(
                      file: state.data?.first?.file ?? File(""),
                      isPdf: p
                          .extension(state.data?.first?.file?.path ?? "")
                          .contains("pdf"),
                      fileSize: state.data?.first?.size ?? '',
                      onRemove: () {
                        state.data?.removeAt(0);
                        attachmentsBloc?.onUpdateData((state.data));
                      },
                    ),
              visible: (state.data?.isEmpty ?? false),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              Translate.s.click_to_upload,
                              textStyle: context.textTheme.bodySmall!.copyWith(
                                  color: context.colors.primary,
                                  fontWeight: FontWeight.w600),
                            ),
                            Gaps.hGap4,
                            Expanded(
                              child: Column(
                                children: [
                                  CustomText(
                                    Translate.s.image_for_your_location_or_home,
                                    textStyle: context.textTheme.displaySmall!
                                        .copyWith(
                                            color: context.colors.titleGrey,
                                            fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
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
          ],
        );
      },
    );
  }
}
