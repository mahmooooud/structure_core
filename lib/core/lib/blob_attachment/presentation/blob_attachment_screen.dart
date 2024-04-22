part of 'blob_attachment_imports.dart';

@RoutePage(name: BlobAttachmentController.routeName)
class BlobAttachmentScreen extends StatefulWidget {
  final int? attachmentId;
  final bool hasBorder;
  final double? borderRadius;
  final double? width;
  final double height;
  final Function()? onTap;
  final bool needShimmer;
  const BlobAttachmentScreen({super.key, required this.attachmentId,this.hasBorder = false,this.needShimmer =false, this.borderRadius,this.height = 90,this.width, this.onTap});

  @override
  State<BlobAttachmentScreen> createState() => _BlobAttachmentScreenState();
}

class _BlobAttachmentScreenState extends State<BlobAttachmentScreen> with SingleTickerProviderStateMixin{
  late BlobAttachmentController controller;

  @override
  void initState() {
    controller = BlobAttachmentController();
    if(widget.attachmentId != null){
      controller.getAttachmentList([widget.attachmentId!]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.setBuildContext(context);
    if(widget.attachmentId == null){
      return Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: context.colors.grey,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 15.r),
        ),
      );
    }else{
      return BlocBuilder<BaseBloc<File?>,BaseState<File?>>(
        bloc: controller.uploadedRequestAttachmentsBloc,
        builder: (context,state){
          return state.maybeMap(
              success: (data){
                //Gaps.hGap10,
                return Container(
                    height: widget.height,
                    width: widget.width,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(widget.borderRadius ?? 15.r),
                        border: widget.hasBorder?  Border.all(
                            color: context.colors.backGroundColorGrey,
                            width: 1.5
                        ) : null
                    ),
                    child: Visibility(
                      visible: data.model?.path.contains('pdf')?? false,
                      replacement: Visibility(
                        visible: data.model?.path.contains('svg')?? false,
                        replacement: Image.file(
                          data.model!,
                          height: widget.height,
                          width: widget.width,
                          fit: BoxFit.contain,
                        ),
                        child: SvgPicture.file(
                          data.model!,
                          height: widget.height,
                          width: widget.width,
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Center(child: Container()),
                    )
                ).press(
                    onTap: widget.onTap ?? (){
                      OpenFile.open(data.model?.path ?? "");
                    }
                );
              },
              loading: (value) => widget.needShimmer? ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: ShimmerWidget(
                  child: SizedBox(
                    height: widget.height,
                    width: widget.width,
                  ),
                ),
              ) : const Center(child: CircularProgressIndicator()),
              failure: (value) => Container(),
              orElse: () => const Center(child: CircularProgressIndicator())
          );
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
