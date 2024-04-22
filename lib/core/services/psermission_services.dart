import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:structure_core/core/common/custom_toast.dart';
import 'package:structure_core/core/common/resource.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class PermissionServices{

  Future<PermissionStatus> getContactsPermission() async {
    await Permission.contacts.request();
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted && permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
      await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ?? PermissionStatus.granted;
    } else {
      return permission;
    }
  }

  Future<bool> requestPermission(Permission permission, BuildContext context) async {
    await permission.request();
    PermissionStatus permissionStatus = await permission.status;
    if (permissionStatus.isGranted) return true;
    // We didn't ask for permission yet or the permission has been denied before but not permanently.
    if (permissionStatus.isPermanentlyDenied ||  permissionStatus.isDenied) {
      // The user opted to never again see the permission request dialog for this
      // app. The only way to change the permission's status now is to let the
      // user manually enable it in the system settings.
      CustomToast.showSnakeBar(Translate.s.access_denied, type: ToastType.error);
      openAppSettings();
      return false;
    }
    return true;
  }


}