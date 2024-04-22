import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:structure_core/core/common/custom_toast.dart';
import 'package:url_launcher/url_launcher.dart';

@injectable
class ShareServices{
  void copyToClipBoard(String text) {
    Clipboard.setData(ClipboardData(text: text)).then((value) {
      CustomToast.showSnakeBar("Copied successfully", type: ToastType.success);
    });
  }

  void launchURL({required String url}) async {
    if (!url.toString().startsWith("https")) {
      url = "https://$url";
    }
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      CustomToast.showSimpleToast(msg: "من فضلك تآكد من الرابط");
    }
  }

  void launchWhatsApp(phone) async {
    String message = 'مرحبا بك';
    var whatsAppUrl = "https://api.whatsapp.com/send?phone=+$phone&text=$message";
    if (await canLaunchUrl(Uri.parse(whatsAppUrl))) {
      await launchUrl(Uri.parse(whatsAppUrl));
    } else {
      CustomToast.showSimpleToast(msg: 'حدث خطأ ما');
    }
  }

}