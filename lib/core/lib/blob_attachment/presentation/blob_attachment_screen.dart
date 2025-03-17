part of 'blob_attachment_imports.dart';

@RoutePage(name: BlobAttachmentController.routeName)
class BlobAttachmentScreen extends StatefulWidget {
  final dynamic attachmentId;
  final bool hasBorder;
  final double? borderRadius;
  final double? width;
  final BoxShape? boxShape;
  final double height;
  final Function()? onTap;
  final bool needShimmer;
  final bool canOpen;
  final bool isOrgLogo;
  const BlobAttachmentScreen({
    super.key,
    required this.attachmentId,
    this.hasBorder = false,
    this.needShimmer = false,
    this.isOrgLogo = false,
    this.borderRadius,
    this.height = 90,
    this.width,
    this.onTap,
    this.boxShape,
    this.canOpen = true,
  });

  @override
  State<BlobAttachmentScreen> createState() => _BlobAttachmentScreenState();
}

class _BlobAttachmentScreenState extends State<BlobAttachmentScreen>
    with SingleTickerProviderStateMixin {
  late BlobAttachmentController controller;

  @override
  void initState() {
    controller = BlobAttachmentController();
    if (widget.attachmentId != null) {
      controller.getAttachmentFile([
        AttachmentDataModel(
            uniqueId: widget.attachmentId, fileName: widget.attachmentId)
      ]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.setBuildContext(context);
    if (widget.attachmentId == null) {
      return Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: context.colors.grey,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 15.r),
        ),
      );
    } else {
      return BlocBuilder<BaseBloc<File?>, BaseState<File?>>(
        bloc: controller.uploadedRequestAttachmentsBloc,
        builder: (context, state) {
          return state.maybeMap(
              success: (data) {
                return Container(
                    height: widget.height,
                    width: widget.width,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        shape: widget.boxShape ?? BoxShape.rectangle,
                        borderRadius: widget.boxShape == null
                            ? BorderRadius.circular(widget.borderRadius ?? 15.r)
                            : null,
                        border: widget.hasBorder
                            ? Border.all(
                                color: context.colors.backGroundColorGrey,
                                width: 1.5)
                            : null),
                    child: Visibility(
                      visible: data.model?.path.contains('pdf') ?? false,
                      replacement: Visibility(
                        visible: data.model?.path.contains('svg') ?? false,
                        replacement: Image.file(
                          data.model!,
                          height: widget.height,
                          width: widget.width,
                          fit: BoxFit.fill,
                        ),
                        child: SvgPicture.file(
                          data.model!,
                          height: widget.height,
                          width: widget.width,
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Center(
                          child: SvgAssets.getWidget(Res.attachment_icon,
                              height: 45, width: 45)),
                    )).press(
                    onTap: widget.onTap ??
                        () {
                          if (widget.canOpen) {
                            OpenFile.open(data.model?.path ?? "");
                          }
                        });
              },
              loading: (value) => widget.needShimmer
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: ShimmerWidget(
                        child: SizedBox(
                          height: widget.height,
                          width: widget.width,
                        ),
                      ),
                    )
                  : Center(
                      child: CupertinoActivityIndicator(
                      color: context.colors.primary,
                    )),
              failure: (value) => Container(),
              orElse: () => const Center(child: CircularProgressIndicator()));
        },
      );
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
