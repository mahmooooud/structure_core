class BaseResponseModel{
  int? total;
  int? pageNumber;
  int? pageSize;
  dynamic? data;
  List<String>? messages;
  bool? isSuccess;

  BaseResponseModel(
      {this.total,
        this.pageNumber,
        this.pageSize,
        this.data,
        this.messages,
        this.isSuccess});

  BaseResponseModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    pageNumber = json['PageNumber'];
    pageSize = json['PageSize'];
    data = json['Data'];
    // messages = json['Messages'].cast<String>();
    isSuccess = json['IsSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total'] = this.total;
    data['PageNumber'] = this.pageNumber;
    data['PageSize'] = this.pageSize;
    data['Data'] = this.data;
    // data['Messages'] = this.messages;
    data['IsSuccess'] = this.isSuccess;
    return data;
  }
}