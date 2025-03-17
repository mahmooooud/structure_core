
import 'dart:convert';

class BaseErrorModel {
  String? exCode;
  List<Message>? message;
  String? type;

  BaseErrorModel({this.exCode, this.message, this.type});

  BaseErrorModel.fromJson(Map<String, dynamic> jsn) {
    print("jsnjsnjsn ${jsn}");
    exCode = jsn['exCode'];

    if (jsn['message'] != null) {
      message = <Message>[];
      jsn['message'].forEach((v) {
        print("jsnjsnjsn ${v}");
        message!.add(Message.fromJson(v));
      });
    }
    type = jsn['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['exCode'] = exCode;
    if (message != null) {
      data['message'] = message!.map((v) => v.toJson()).toList();
    }
    data['type'] = type;
    return data;
  }
}

class Message {
  String? errorMessage;

  Message({this.errorMessage});

  Message.fromJson(json) {
    print("jsonjson ${json['errorMessage']}");
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ErrorMessage'] = errorMessage;
    return data;
  }
}
