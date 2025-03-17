class BaseResponseModel {
  int? total;
  int? pageNumber;
  int? pageSize;
  dynamic? data;
  List<String>? errorMessage;
  bool? isSuccess;

  BaseResponseModel(
      {this.total,
      this.pageNumber,
      this.pageSize,
      this.data,
      this.errorMessage,
      this.isSuccess});

  BaseResponseModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    pageNumber = json['PageNumber'];
    pageSize = json['PageSize'];
    data = json['Data'];
    errorMessage = json['errorMessage'];
    isSuccess = json['IsSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Total'] = total;
    data['PageNumber'] = pageNumber;
    data['PageSize'] = pageSize;
    data['Data'] = this.data;
    data['errorMessage'] = errorMessage;
    data['IsSuccess'] = isSuccess;
    return data;
  }
}
