class EmptyResultModel {
  bool? success;

  EmptyResultModel({this.success});

  EmptyResultModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    return data;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmptyResultModel && runtimeType == other.runtimeType && success == other.success;

  @override
  int get hashCode => success.hashCode;
}
