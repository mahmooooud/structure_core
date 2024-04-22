import 'package:structure_core/core/bloc/generic_cubit/generic_cubit.dart';

class LookupsModel {
  int? total;
  int? pageNumber;
  int? pageSize;
  List<LookupsDataModel>? data;
  bool? isSuccess;

  LookupsModel(
      {this.total, this.pageNumber, this.pageSize, this.data, this.isSuccess});

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

class LookupsDataModel {
  int? id;
  String? code;
  String? name;
  int? vacationDaysCount;
  int? hoursPerMonth;
  int? hoursPerDay;
  int? countPerDay;
  int? allowedPeriodPerYear;
  int? allowedPeriodPerMonth;
  int? allowedPeriodPerWeek;
  int? branchId;
  String? nameAr;
  String? nameEn;
  String? fullName;
  String? uniqueId;
  String? rowVersion;
  bool? isActive;
  bool? isSelected;
  bool? attachmentsRequired;
  bool? isBuiltIn;
  bool? timeEnabled;
  GenericBloc<bool>? isSelectedBloc;

  LookupsDataModel(
      {this.id,
        this.code,
        this.name,
        this.vacationDaysCount,
        this.nameAr,
        this.nameEn,
        this.uniqueId,
        this.rowVersion,
        this.timeEnabled,
        this.isBuiltIn,
        this.isActive,
        this.allowedPeriodPerYear,
        this.allowedPeriodPerMonth,
        this.allowedPeriodPerWeek,
        this.isSelected = false,
        this.fullName,
        this.hoursPerDay,
        this.countPerDay,
        this.hoursPerMonth,
        this.isSelectedBloc,
        this.branchId,
        this.attachmentsRequired});

  LookupsDataModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    code = json['Code'];
    nameAr = json['NameAr'];
    nameEn = json['NameEn'];
    uniqueId = json['UniqueId'];
    branchId = json['BranchId'];
    rowVersion = json['RowVersion'];
    timeEnabled = json['TimeEnabled'];
    isBuiltIn = json['IsBuiltIn'];
    isActive = json['IsActive'];
    isSelected = false;
    fullName = json['FullName'];
    attachmentsRequired = json['AttachmentRequired'];
    name = json['Name'];
    vacationDaysCount = json['VacationDaysCount'];
    hoursPerDay = json['HoursPerDay'];
    countPerDay = json['CountPerDay'];
    hoursPerMonth = json['HoursPerMonth'];
    allowedPeriodPerYear = json['AllowedPeriodPerYear'];
    allowedPeriodPerMonth = json['AllowedPeriodPerMonth'];
    allowedPeriodPerWeek = json['AllowedPeriodPerWeek'];
    isSelectedBloc = GenericBloc(false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Code'] = this.code;
    data['NameAr'] = this.nameAr;
    data['NameEn'] = this.nameEn;
    data['IsBuiltIn'] = this.isBuiltIn;
    data['TimeEnabled'] = this.timeEnabled;
    data['UniqueId'] = this.uniqueId;
    data['RowVersion'] = this.rowVersion;
    data['IsActive'] = this.isActive;
    data['FullName'] = this.fullName;
    data['BranchId'] = this.branchId;
    data['AttachmentsRequired'] = this.attachmentsRequired;
    return data;
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LookupsDataModel &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => nameEn.hashCode;
}
