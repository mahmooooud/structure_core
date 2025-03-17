class LoginRequestModel {
  String? userName;
  String? password;
  String? fcmToken;
  bool? isEnableBio;

  LoginRequestModel({
    this.userName,
    this.password,
    this.fcmToken,
    this.isEnableBio,
  });
  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      LoginRequestModel(
        userName: json['UserName'],
        password: json['Password'],
        fcmToken: json['FCMToken'],
        isEnableBio: json['IsEnableBio'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['UserName'] = userName;
    data['Password'] = password;
    data['FCMToken'] = fcmToken;
    if (isEnableBio != null) {
      data['IsEnableBio'] = isEnableBio;
    }
    return data;
  }
}
