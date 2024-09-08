import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:http_parser/http_parser.dart';
import 'package:structure_core/core/bloc/base_bloc/base_bloc.dart';
import 'package:structure_core/core/common/appConfig.dart';
import 'package:structure_core/core/common/loading_helper.dart';
import 'package:structure_core/core/net/http_client.dart';
import 'dart:io' as io;

class BaseFileController {
  void _requestDownloadFile(BaseBloc downloadBloc,
      {required String fileId,
      required MediaType mediaType,
      required String savePath,
      required CancelToken cancelToken}) async {
    downloadBloc.loadingState();
    GetIt.I<LoadingHelper>().showLoadingDialog();
    if (await io.File(savePath).exists()) {
      GetIt.I<LoadingHelper>().dismissDialog();
      downloadBloc.successState(savePath);
    } else {
      final response = await GetIt.I<HttpClient>().download(
        savePath: savePath,
        headers: _getHeaders(mediaType),
        onReceiveProgress: (int count, int total) {
          debugPrint('---Download----Rec: $count, Total: $total');
          debugPrint("${((count / total) * 100).toStringAsFixed(0)}%");
        },
        url: 'ApiUrl.downloadFilesURls + fileId',
        cancelToken: cancelToken,
      );
      GetIt.I<LoadingHelper>().dismissDialog();
      response.when(
        isSuccess: (data) {
          downloadBloc.successState(data);
        },
        isError: (error) {
          downloadBloc.failedState(error, () {
            _requestDownloadFile(downloadBloc,
                fileId: fileId,
                mediaType: mediaType,
                savePath: savePath,
                cancelToken: cancelToken);
          });
        },
      );
    }
  }

  Map<String, String> _getHeaders(MediaType mediaType) {
    return {
      'Content-Type': mediaType.type,
    };
  }

  String onDownloadTapAndGetTempPath(BaseBloc downloadBloc, String fileId,
      MediaType mediaType, CancelToken cancelToken,
      {String downloadPath = ''}) {
    String localFilePath = "${AppConfig().getTempPath}/$fileId";
    _requestDownloadFile(downloadBloc,
        fileId: fileId,
        mediaType: mediaType,
        savePath: downloadPath.isEmpty ? localFilePath : downloadPath,
        cancelToken: cancelToken);
    return downloadPath.isEmpty ? localFilePath : downloadPath;
  }
}
