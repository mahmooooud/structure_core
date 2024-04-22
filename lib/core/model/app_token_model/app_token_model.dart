class AppTokenModel {
  dynamic? accessToken;
  int? expiresIn;
  String? tokenType;
  String? scope;

  AppTokenModel({this.accessToken, this.expiresIn, this.tokenType, this.scope});

  AppTokenModel.fromJson(json) {
    accessToken = json['access_token'];
    expiresIn = json['expires_in'];
    tokenType = json['token_type'];
    scope = json['scope'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['expires_in'] = expiresIn;
    data['token_type'] = tokenType;
    data['scope'] = scope;
    return data;
  }
}
