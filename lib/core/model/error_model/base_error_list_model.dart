class BaseErrorListModel {
  String? propertyName;
  String? errorMessage;
  dynamic attemptedValue;
  dynamic customState;
  int? severity;
  String? errorCode;
  FormattedMessagePlaceholderValues? formattedMessagePlaceholderValues;

  BaseErrorListModel(
      {this.propertyName,
        this.errorMessage,
        this.attemptedValue,
        this.customState,
        this.severity,
        this.errorCode,
        this.formattedMessagePlaceholderValues});

  BaseErrorListModel.fromJson(json) {
    propertyName = json['propertyName'];
    errorMessage = json['errorMessage'];
    attemptedValue = json['attemptedValue'];
    customState = json['customState'];
    severity = json['severity'];
    errorCode = json['errorCode'];
    // formattedMessagePlaceholderValues =
    // json['formattedMessagePlaceholderValues'] != null
    //     ? FormattedMessagePlaceholderValues.fromJson(
    //     json['formattedMessagePlaceholderValues'])
    //     : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['propertyName'] = propertyName;
    data['errorMessage'] = errorMessage;
    data['attemptedValue'] = attemptedValue;
    data['customState'] = customState;
    data['severity'] = severity;
    data['errorCode'] = errorCode;
    // if (formattedMessagePlaceholderValues != null) {
    //   data['formattedMessagePlaceholderValues'] =
    //       formattedMessagePlaceholderValues!.toJson();
    // }
    return data;
  }
}

class FormattedMessagePlaceholderValues {
  String? propertyName;
  String? propertyValue;

  FormattedMessagePlaceholderValues({this.propertyName, this.propertyValue});

  FormattedMessagePlaceholderValues.fromJson(Map<String, dynamic> json) {
    propertyName = json['PropertyName'];
    propertyValue = json['PropertyValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PropertyName'] = propertyName;
    data['PropertyValue'] = propertyValue;
    return data;
  }
}
