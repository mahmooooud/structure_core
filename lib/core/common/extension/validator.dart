import 'package:ndf/core/localization/translate.dart';

/// TODO refactor put the validator in its own class
/// Why getFieldValidation in other place
extension Validator on String {
  String? noValidate() {
    return null;
  }

  String? validateEmpty({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    }
    return null;
  }

  String? validateName({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(r'^[a-zA-Z\u0621-\u064A\s]+$').hasMatch(this)) {
      return message ?? Translate.s.nameValidation;
    }
    return null;
  }

  String? validateShortAddress({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(r'^[a-zA-Z]{4}[0-9]{4}$').hasMatch(this)) {
      return message ?? Translate.s.short_address_validation;
    }
    return null;
  }

  String? validatePostalCode({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(r'^\d{5}$').hasMatch(this)) {
      return message ?? Translate.s.postal_code_validation;
    }
    return null;
  }

  String? validateBuildingCode({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (length > 4) {
      return message ?? Translate.s.building_number_valid;
    }
    return null;
  }

  String? validateSecondaryCode({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (length > 4) {
      return message ?? Translate.s.secondary_number_valid;
    }
    return null;
  }

  String? validatePassword({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this)) {
      return message ?? Translate.s.passValidation;
    }
    return null;
  }

  String? validateEmail({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(this)) {
      return message ?? Translate.s.mailValidation;
    }
    return null;
  }

  String? validateEmailORNull({String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message ?? Translate.s.mailValidation;
      }
    }
    return null;
  }

  String? validatePhone({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(r'^05\d{8}$').hasMatch(this) || length < 10) {
      return message ?? Translate.s.phoneValidation;
    }
    return null;
  }

  String? validateNationalId({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(r'^[1-2]\d{9}$').hasMatch(this) || length < 10) {
      return message ?? Translate.s.nationalIDValidation;
    }
    return null;
  }

  String? validatePhoneOrNull({String? message}) {
    if (trim().isEmpty) {
      return null;
    } else if (!RegExp(
                r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
            .hasMatch(this) ||
        length < 10) {
      return message ?? Translate.s.phoneValidation;
    }
    return null;
  }

  String? validatePasswordConfirm({required String pass, String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (this != pass) {
      return message ?? Translate.s.confirmValidation;
    }
    return null;
  }
}

String? validateDropDown(dynamic model, {String? message}) {
  if (model == null) {
    return message ?? Translate.s.fillField;
  }
  return null;
}
