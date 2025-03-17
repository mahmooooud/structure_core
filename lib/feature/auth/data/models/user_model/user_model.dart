class LoginResponseModel {
  int? total;
  int? pageNumber;
  int? pageSize;
  UserData? data;
  bool? isSuccess;

  LoginResponseModel(
      {this.total, this.pageNumber, this.pageSize, this.data, this.isSuccess});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    pageNumber = json['PageNumber'];
    pageSize = json['PageSize'];
    data = json['Data'] != null ? UserData.fromJson(json['Data']) : null;
    isSuccess = json['IsSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Total'] = total;
    data['PageNumber'] = pageNumber;
    data['PageSize'] = pageSize;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    data['IsSuccess'] = isSuccess;
    return data;
  }
}

class UserData {
  String? userName;
  String? email;
  String? fullName;
  String? token;
  String? refreshToken;
  bool? twoFactorEnabled;
  bool? isCompleted;
  bool? isEmailConfirmed;
  String? currentUserLang;
  String? userType;

  UserData(
      {this.userName,
      this.email,
      this.fullName,
      this.token,
      this.refreshToken,
      this.twoFactorEnabled,
      this.isCompleted,
      this.isEmailConfirmed,
      this.currentUserLang,
      this.userType});

  UserData.fromJson(Map<String, dynamic> json) {
    userName = json['UserName'];
    email = json['Email'];
    fullName = json['FullName'];
    token = json['Token'];
    refreshToken = json['RefreshToken'];
    twoFactorEnabled = json['TwoFactorEnabled'];
    isCompleted = json['IsCompleted'];
    isEmailConfirmed = json['IsEmailConfirmed'];
    currentUserLang = json['CurrentUserLang'];
    userType = json['UserType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['UserName'] = userName;
    data['Email'] = email;
    data['FullName'] = fullName;
    data['Token'] = token;
    data['RefreshToken'] = refreshToken;
    data['TwoFactorEnabled'] = twoFactorEnabled;
    data['IsCompleted'] = isCompleted;
    data['IsEmailConfirmed'] = isEmailConfirmed;
    data['CurrentUserLang'] = currentUserLang;
    data['UserType'] = userType;
    return data;
  }
}
