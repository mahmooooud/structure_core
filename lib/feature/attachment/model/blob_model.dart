class BlobModel {
  int? total;
  int? pageNumber;
  int? pageSize;
  List<BlobData>? data;
  bool? isSuccess;

  BlobModel(
      {this.total, this.pageNumber, this.pageSize, this.data, this.isSuccess});

  BlobModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    pageNumber = json['PageNumber'];
    pageSize = json['PageSize'];
    if (json['Data'] != null) {
      data = <BlobData>[];
      json['Data'].forEach((v) {
        data!.add(new BlobData.fromJson(v));
      });
    }
    isSuccess = json['IsSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Total'] = total;
    data['PageNumber'] = pageNumber;
    data['PageSize'] = pageSize;
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['IsSuccess'] = isSuccess;
    return data;
  }
}

class BlobData {
  int? id;
  String? uniqueId;
  String? fileName;
  String? fileDownloadName;
  String? fileType;
  int? fileSize;
  int? thumbNailId;
  String? path;
  String? filePath;

  BlobData(
      {this.id,
      this.uniqueId,
      this.fileName,
      this.fileDownloadName,
      this.fileType,
      this.fileSize,
      this.thumbNailId,
      this.path,
      this.filePath});

  BlobData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    uniqueId = json['UniqueId'];
    fileName = json['FileName'];
    fileDownloadName = json['FileDownloadName'];
    fileType = json['FileType'];
    fileSize = json['FileSize'];
    thumbNailId = json['ThumbNailId'];
    path = json['Path'];
    path = json['Path'];
    filePath = json['FilePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['UniqueId'] = uniqueId;
    data['FileName'] = fileName;
    data['FileDownloadName'] = fileDownloadName;
    data['FileType'] = fileType;
    data['FileSize'] = fileSize;
    data['ThumbNailId'] = thumbNailId;
    data['Path'] = path;
    data['FilePath'] = filePath;
    return data;
  }
}
