
import 'dart:convert';

class BaseErrorModel {
  String? exCode;
  List<Message>? message;
  String? type;

  BaseErrorModel({this.exCode, this.message, this.type});

  BaseErrorModel.fromJson(json) {
    exCode = json['exCode'];
    if (json['message'] != null) {
      message = <Message>[];
      json['message'].forEach((v) {
        message!.add(Message.fromJson(v));
      });
    }
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
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
  String? propertyName;

  Message({this.errorMessage,this.propertyName});

  Message.fromJson(Map<String, dynamic> json) {
    errorMessage = json['errorMessage'];
    propertyName = json['propertyName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['errorMessage'] = this.errorMessage;
    data['propertyName'] = this.propertyName;
    return data;
  }
}
