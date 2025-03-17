import 'package:ndf/core/localization/translate.dart';

enum OrderEnum {
  desc('DESC'),
  asc('ASC');

  final String value;

  const OrderEnum(this.value);

  @override
  String toString() {
    return value;
  }

  String toLocalizedString() {
    switch (this) {
      case OrderEnum.desc:
        return 'desc';
      case OrderEnum.asc:
        return 'asc';
    }
  }
}
