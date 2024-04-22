import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:structure_core/core/common/appConfig.dart';
import 'package:structure_core/core/common/ico_moon_data.dart';
import 'package:structure_core/core/constants/app/app_constants.dart';
import 'package:structure_core/core/model/icon_model/icon_model.dart';

extension CustomIconExtention on String? {
  IconData? getIcon() {
    if (this == null) return Icons.refresh;
    IconModel? iconModel =
        AppConfig().icoMoonIcons.firstWhereOrNull((element) => element.name == this);
    if (iconModel != null) {
      return IcoMoonData(iconModel.code, ApplicationConstants.ICO_FONT_FAMILY_ICONS);
    }
    IconModel? primeModel =
        AppConfig().primeIcons.firstWhereOrNull((element) => element.name == this);
    if (primeModel != null) {
      return IcoMoonData(primeModel.code, ApplicationConstants.Prime_FONT_FAMILY_ICONS);
    }
    return null;
  }
}

var defaultIcon = "twitter".getIcon();
