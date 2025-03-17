part of 'blob_attachment_imports.dart';

class BlobAttachmentController extends BaseController {
  static const routeName = "RouteAttachment";
  var prefs = GetIt.I<ISpHelper>();
  BlobAttachmentController();
  BaseBloc<File?> uploadedRequestAttachmentsBloc = BaseBloc(null);
  GenericBloc<bool> gettingAttachments = GenericBloc(false);
  File? requestAttachments;

  getAttachmentList(List<dynamic> ids, {bool? needFile}) async {
    uploadedRequestAttachmentsBloc.loadingState();
    await GetIt.I
        .get<BlobAttachmentRepository>()
        .getRequestAttachment(ids)
        .then((value) {
      value.when(isSuccess: (data) async {
        getAttachmentFile(data?.attachmentData ?? []);
      }, isError: (error) {
        uploadedRequestAttachmentsBloc.failedState(error, () {});
        CustomToast.showSnakeBar(error.toString(), type: ToastType.error);
      });
    });
  }

  getAttachmentFile(List<AttachmentDataModel> attachmentData) async {
    uploadedRequestAttachmentsBloc.loadingState();
    final Directory tempDir = await getTemporaryDirectory();
    for (int i = 0; i < attachmentData.length; i++) {
      await GetIt.I
          .get<BlobAttachmentRepository>()
          .getPhoto(attachmentData[i].uniqueId?.toString() ?? "",
              "${tempDir.path}/${attachmentData[i].fileName}")
          .then((value) {
        value.when(isSuccess: (data) async {
          gettingAttachments.onUpdateData(false);
          requestAttachments =
              File("${tempDir.path}/${attachmentData[i].fileName}");
          uploadedRequestAttachmentsBloc.successState(requestAttachments);
        }, isError: (error) {
          uploadedRequestAttachmentsBloc.failedState(error, () {});
          CustomToast.showSnakeBar(error.toString(), type: ToastType.error);
        });
      });
    }
    gettingAttachments.onUpdateData(false);
  }

  @override
  void dispose() {}

  @override
  void setBuildContext(BuildContext widgetContext) {
    this.context = widgetContext;
  }

  Future getRequestAttachment(
      List<int> ids, Function(List<BlobFileModel>?) callBack) async {
    uploadedRequestAttachmentsBloc.loadingState();
    await GetIt.I
        .get<BlobAttachmentRepository>()
        .getRequestAttachment(ids)
        .then((value) {
      value.when(isSuccess: (data) async {
        List<BlobFileModel>? blobList =
            await getRequestAttachments(data?.attachmentData ?? []);
        callBack.call(blobList);
      }, isError: (error) {
        uploadedRequestAttachmentsBloc.failedState(error, () {});
        CustomToast.showSnakeBar(error.toString(), type: ToastType.error);
      });
    });
  }

  Future<List<BlobFileModel>?> getRequestAttachments(
      List<AttachmentDataModel> attachmentData) async {
    final Directory tempDir = await getTemporaryDirectory();
    List<BlobFileModel> blobFileModel = [];
    await Future.wait(attachmentData.map((e) async {
      await GetIt.I
          .get<BlobAttachmentRepository>()
          .getPhoto(e.uniqueId ?? "", "${tempDir.path}/${e.fileName}")
          .then((value) {
        value.when(isSuccess: (data) async {
          blobFileModel.add(BlobFileModel(
            file: File("${tempDir.path}/${e.fileName}"),
            attachmentId: e.id,
            size: '',
          ));
        }, isError: (error) {
          CustomToast.showSnakeBar(error.toString(), type: ToastType.error);
        });
      });
    }));
    return blobFileModel;
  }
}
