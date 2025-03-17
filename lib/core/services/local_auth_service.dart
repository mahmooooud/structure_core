import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

import 'package:ndf/core/common/custom_toast.dart';
import 'package:ndf/core/datasource/isp_helper.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/feature/auth/data/models/user_model/login_request_model.dart';
import 'package:ndf/res.dart';

class LocalAuthService {
  final LocalAuthentication auth = LocalAuthentication();
  Future<bool> canCheckBio() async {
    bool canCheckBiometrics = false;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
    }
    return canCheckBiometrics;
  }

  Future<List<BiometricType>> getBiometricList() async {
    List<BiometricType> availableBiometrics = [];
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = [];
    }
    return availableBiometrics;
  }

  Future<String> getBiometricIcon() async {
    List<BiometricType> availableBiometrics = await getBiometricList();
    if (await canCheckBio()) {
      if (availableBiometrics.isNotEmpty) {
        if ((availableBiometrics.length == 1 &&
                availableBiometrics.contains(BiometricType.weak)) ||
            availableBiometrics.contains(BiometricType.face)) {
          return Res.faceid;
        } else {
          return Res.finger_print;
        }
      } else {
        return Res.finger_print;
      }
    } else {
      return Res.finger_print;
    }
  }

  Future<bool> biometricAuthenticate() async {
    bool authenticated = false;
    List<BiometricType> availableBiometrics = await getBiometricList();
    if (availableBiometrics.isNotEmpty) {
      if (availableBiometrics.contains(BiometricType.strong) ||
          availableBiometrics.contains(BiometricType.face) ||
          availableBiometrics.contains(BiometricType.weak)) {
        authenticated = await auth
            .authenticate(
          localizedReason: Translate.s.authenticate_access_app,
          options: const AuthenticationOptions(
              useErrorDialogs: true, stickyAuth: true, biometricOnly: true),
        )
            .catchError((e) {
          CustomToast.showSnakeBar((e as PlatformException).message,
              type: ToastType.error);
          return false;
        });
      } else {
        authenticated = await auth
            .authenticate(
          localizedReason: Translate.s.authenticate_access_app,
          options: const AuthenticationOptions(
              useErrorDialogs: true, stickyAuth: true, biometricOnly: false),
        )
            .catchError((e) {
          CustomToast.showSnakeBar((e as PlatformException).message,
              type: ToastType.error);
          return false;
        });
      }
    } else {
      authenticated = await auth
          .authenticate(
            localizedReason: Translate.s.authenticate_access_app,
            options: const AuthenticationOptions(
                useErrorDialogs: true, stickyAuth: true, biometricOnly: false),
          )
          .then((value) => value)
          .catchError((e) {
        CustomToast.showSnakeBar((e as PlatformException).message,
            type: ToastType.error);
        return false;
      });
    }
    if (authenticated) {
      return true;
    } else {
      return false;
    }
  }
}
