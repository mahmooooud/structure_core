class RestPassword {
  String? email;
  String? key;
  String? newPassword;

  RestPassword({this.email, this.key, this.newPassword});

  RestPassword.fromJson(Map<String, dynamic> json) {
    email = json['Email'];
    key = json['Key'];
    newPassword = json['NewPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Email'] = email;
    data['Key'] = key;
    data['NewPassword'] = newPassword;
    return data;
  }
}
