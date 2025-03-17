import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';

class LookupsModel {
  int? total;
  int? pageNumber;
  int? pageSize;
  List<LookupsDataModel>? data;
  List<dynamic>? messages;
  bool? isSuccess;

  LookupsModel(
      {this.total,
      this.pageNumber,
      this.pageSize,
      this.data,
      this.messages,
      this.isSuccess});

  LookupsModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    pageNumber = json['PageNumber'];
    pageSize = json['PageSize'];
    if (json['Data'] != null) {
      data = <LookupsDataModel>[];
      json['Data'].forEach((v) {
        data!.add(LookupsDataModel.fromJson(v));
      });
    }
    if (json['Messages'] != null) {
      messages = [];
      json['Messages'].forEach((v) {
        messages!.add(v);
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
    if (messages != null) {
      data['Messages'] = messages!.map((v) => v.toJson()).toList();
    }
    data['IsSuccess'] = isSuccess;
    return data;
  }
}

class LookupsDataModel {
  dynamic id;
  String? code;
  String? name;
  String? title;

  String? fullName;

  bool? isActive;
  bool? isSelected;
  String? nameAr;
  String? nameEn;
  String? value;
  GenericBloc<bool>? isSelectedBloc;

  LookupsDataModel(
      {this.id,
      this.code,
      this.title,
      this.nameAr,
      this.nameEn,
      this.name,
      this.isActive,
      this.isSelected = false,
      this.fullName,
      this.isSelectedBloc,
      this.value,
      t});

  LookupsDataModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    code = json['Code'];
    title = json['title'] ??
        json['Title'] ??
        json['Name'] ??
        json['FullName'] ??
        json['NationalityName'];

    nameAr = json['NameAr'];
    nameEn = json['NameEn'];
    isActive = json['IsActive'];
    isSelected = false;
    fullName = json['FullName'];
    value = json['Value'];

    name = json['Name'];

    isSelectedBloc = GenericBloc(false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Code'] = code;
    data['NameAr'] = this.nameAr;
    data['NameEn'] = this.nameEn;
    data['IsActive'] = isActive;
    data['FullName'] = fullName;
    data['title'] = title;
    data['Value'] = value;

    return data;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LookupsDataModel &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => name.hashCode;
}
