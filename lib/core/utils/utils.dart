import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/app_button.dart';
import 'package:ndf/core/ui/custom_button.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/lib/blob_attachment/data/model/blob_file_model.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/core/services/psermission_services.dart';

int getMonthlyDate({required int year, required int month}) {
  int day = 0;
  switch (month) {
    case 1:
      day = 31;
      break;
    case 2:
      day = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 ? 29 : 28;
      break;
    case 3:
      day = 31;
      break;
    case 4:
      day = 30;
      break;
    case 5:
      day = 31;
      break;
    case 6:
      day = 30;
      break;
    case 7:
      day = 31;
      break;
    case 8:
      day = 31;
      break;
    case 9:
      day = 30;
      break;
    case 10:
      day = 31;
      break;
    case 11:
      day = 30;
      break;
    case 12:
      day = 31;
      break;

    default:
      day = 30;
      break;
  }
  return day;
}

// Future<void> pickedServiceFile(
//     {required BuildContext context,
//     required GenericBloc<List<BlobFileModel?>> attachmentsBloc,
//     required GenericBloc<bool> showErrorMessage,
//     GlobalKey<FormState>? formKey,
//     bool isAndroid = true}) async {
//   FocusManager.instance.primaryFocus?.unfocus();
//   late final Map<Permission, PermissionStatus> statusess;
//   var allAccepted = true;
//   if (isAndroid) {
//     final androidInfo = await DeviceInfoPlugin().androidInfo;
//     if (androidInfo.version.sdkInt <= 32) {
//       statusess = await [
//         Permission.storage,
//       ].request();
//     } else if (await Permission.photos.isLimited == false) {
//       statusess = await [Permission.photos].request();
//     }

//     if (await Permission.photos.status != (PermissionStatus.granted) &&
//         await Permission.photos.status != (PermissionStatus.limited)) {
//       allAccepted = false;
//     }
//   } else {
//     await GetIt.I<PermissionServices>()
//         .requestPermission(Permission.storage, context);
//   }

//   if (allAccepted) {
//     List<String> allowExtentions = ["jpg", "jpeg", "gif", "pdf", "png"];
//     List<BlobFileModel?>? res = attachmentsBloc.state.data;
//     FilePickerResult? tempFile = await FilePicker.platform.pickFiles(
//         type: FileType.custom,
//         allowMultiple: false,
//         allowedExtensions: allowExtentions);
//     if (tempFile != null) {
//       for (var element in tempFile.files) {
//         const suffixes = ["GB", "TB", "PB", "EB", "ZB", "YB"];
//         getFileSize(tempFile.files.first.path ?? "", 2).then((value) {
//           String fileSize = value.split(" ").first;
//           String fileUnit = value.split(" ").last;
//           if (suffixes.contains(fileUnit)) {
//             showErrorMessage.onUpdateData(true);
//           } else if (fileUnit == "KB" || fileUnit == "B") {
//             res?.add(BlobFileModel(
//                 file: File(tempFile.files.first.path!),
//                 attachmentId: -1,
//                 size: ('$fileSize $fileUnit')));
//             formKey?.currentState?.reset();
//             showErrorMessage.onUpdateData(false);
//           } else {
//             if (double.parse(fileSize) <= 50) {
//               showErrorMessage.onUpdateData(false);
//               res?.add(BlobFileModel(
//                   file: File(tempFile.files.first.path!),
//                   attachmentId: -1,
//                   size: ('$fileSize $fileUnit')));
//               formKey?.currentState?.reset();
//             } else {
//               showErrorMessage.onUpdateData(true);
//             }
//           }
//         });
//       }
//       attachmentsBloc.onUpdateData(res);
//     }
//   }
// }

// Future<String> getFileSize(String filepath, int decimals) async {
//   var file = File(filepath);
//   int bytes = await file.length();
//   if (bytes <= 0) return "0 B";
//   const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
//   var i = (log(bytes) / log(1024)).floor();
//   return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
// }

// Future<XFile?> compressImage(File file) async {
//   final filePath = file.absolute.path;
//   final lastIndex = filePath.lastIndexOf(RegExp(r'.png|.jp'));
//   final splitted = filePath.substring(0, (lastIndex));
//   final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
//   if (lastIndex == filePath.lastIndexOf(RegExp(r'.png'))) {
//     final compressedImage = await FlutterImageCompress.compressAndGetFile(
//         filePath, outPath,
//         minWidth: 1000,
//         minHeight: 1000,
//         quality: 70,
//         format: CompressFormat.png);
//     return compressedImage;
//   } else {
//     final compressedImage = await FlutterImageCompress.compressAndGetFile(
//       filePath,
//       outPath,
//       minWidth: 1000,
//       minHeight: 1000,
//       quality: 50,
//     );
//     return compressedImage;
//   }
// }

Future<File> base64ToFile(String base64String, String fileName) async {
  final directory = await getApplicationDocumentsDirectory();
  final bytes = base64Decode(base64String);
  final file = File('${directory.path}/$fileName');
  return await file.writeAsBytes(bytes);
}

String replaceFarsiNumber(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const farsi = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(farsi[i], english[i]);
  }

  return input;
}

Future MyPopUpShowAddImage(
    BuildContext context, Function(ImageSource source) onPressed) async {
  return await showCupertinoModalPopup(
      context: context,
      useRootNavigator: true,
      builder: (context) {
        return CupertinoActionSheet(
          actions: [
            CupertinoActionSheetAction(
              onPressed: () => onPressed(ImageSource.camera),
              child: Container(
                child: Text(
                  Translate.s.camera,
                  style: context.textTheme.bodyMedium!
                      .copyWith(color: context.colors.black),
                ),
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () => onPressed(ImageSource.gallery),
              child: Text(
                Translate.s.gallery,
                style: context.textTheme.bodyMedium!
                    .copyWith(color: context.colors.black),
              ),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => Navigator.pop(context),
            child: Text(
              Translate.s.cancel,
              style: context.textTheme.bodyMedium!
                  .copyWith(color: context.colors.black),
            ),
          ),
        );
      });
}

bool checkPasswordLength(String text) {
  return text.length >= 7;
}

bool checkPasswordHasNumber(String text) {
  return text.contains(RegExp(r'[0-9]'));
}

bool checkPasswordHasSpecial(String text) {
  return text.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
}

bool checkPasswordHasUppercase(String text) {
  return text.contains(RegExp(r'[A-Z]'));
}

bool checkPasswordHasLowercase(String text) {
  return text.contains(RegExp(r'[a-z]'));
}

/// Loads a custom SVG icon from assets and converts it to a BitmapDescriptor
/// for use as a marker in Google Maps.
///
/// The icon size is currently set to 48x48 pixels. To modify the size, adjust
/// the arguments to `toImage`.
///
/// The SVG icon is sourced from the assets folder in the Flutter project, and
/// its path is specified in the `Res` class.
///
/// The returned BitmapDescriptor can be used as a marker in Google Maps.

void showLogoutDialog(BuildContext context, Function() onLogout) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.logout,
                  color: Colors.red[400],
                  size: 30,
                ),
              ),
              Gaps.vGap20,
              CustomText(Translate.s.logout,
                  textStyle: context.textTheme.bodyMedium!.copyWith(
                    color: context.colors.titleBlack4,
                    fontWeight: FontWeight.w600,
                  )),
              Gaps.vGap10,
              CustomText(
                Translate.s.logout_warning,
                textStyle: context.textTheme.bodyMedium!.copyWith(
                  color: context.colors.titleBlack,
                ),
                maxLines: 10,
              ),
              Gaps.vGap20,
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    onLogout();
                  },
                  backGroundColor: context.colors.red4,
                  child: CustomText(Translate.s.logout,
                      textStyle: context.textTheme.bodyMedium!.copyWith(
                        color: context.colors.white,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              Gaps.vGap10,
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  backGroundColor: context.colors.white,
                  borderColor: context.colors.titleBlack3,
                  child: CustomText(Translate.s.cancel,
                      textStyle: context.textTheme.bodyMedium!.copyWith(
                        color: context.colors.titleBlack3,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
