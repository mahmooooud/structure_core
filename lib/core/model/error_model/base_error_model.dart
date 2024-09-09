
import 'dart:convert';

class BaseErrorModel {
  String? exCode;
  List<Message>? message;
  String? type;

  BaseErrorModel({this.exCode, this.message, this.type});

  BaseErrorModel.fromJson(Map<String, dynamic> jsn) {
    exCode = jsn['exCode'];
    if (jsn['message'] != null) {
      message = <Message>[];
      json.decode(jsn['message']).forEach((v) {
        message!.add(new Message.fromJson(v));
      });
    }
    type = jsn['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['exCode'] = this.exCode;
    if (this.message != null) {
      data['message'] = this.message!.map((v) => v.toJson()).toList();
    }
    data['type'] = this.type;
    return data;
  }
}

class Message {
  String? errorMessage;

  Message({this.errorMessage});

  Message.fromJson(Map<String, dynamic> json) {
    errorMessage = json['ErrorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ErrorMessage'] = this.errorMessage;
    return data;
  }
}
