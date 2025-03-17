class RefreshTokenRequestModel {
  String? oldAccessToken;
  String? refreshToken;

  RefreshTokenRequestModel({this.oldAccessToken, this.refreshToken});

  RefreshTokenRequestModel.fromJson(Map<String, dynamic> json) {
    oldAccessToken = json['oldAccessToken'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['oldAccessToken'] = oldAccessToken;
    data['refreshToken'] = refreshToken;
    return data;
  }
}