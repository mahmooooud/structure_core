import 'package:flutter/material.dart';
import 'package:ndf/core/theme/color/app_colors.dart';

class AppColorsLight implements AppColors {
  @override
  Color primary = const Color(0xffE18541);
  @override
  Color primaryLight = const Color(0xffFFE5D3);
  @override
  Color secondary = const Color(0xff451F9C);

  //Greys
  @override
  Color grey = const Color(0xFFacacac);
  @override
  Color grey2 = const Color(0xff71706F);
  @override
  Color grey3 = const Color(0xffF7F9FC);
  @override
  Color grey4 = const Color(0xffF5F5F5);
  @override
  Color grey5 = const Color(0xff707681);
  @override
  Color iconGrey = const Color(0xffBBBBBB);
  @override
  Color greyBlur = const Color(0xFFD5D6D9);
  @override
  Color titleGrey = const Color(0xff717680);

  @override
  Color darkGrey = const Color(0xffD9D9D9);
  @override
  Color shadowGrey = const Color(0x0C0A0C12);

  @override
  Color borderGrey = const Color(0xFFD5D7DA);

  @override
  Color backGroundColorGrey = const Color(0xff0A0D121A).withOpacity(.9);
  @override
  Color backGroundColorGrey2 = const Color(0xFFE9EAEB);

  //------------------------------------------------
  //blacks#515C6A
  @override
  Color black = const Color(0xff000000);
  @override
  Color titleBlack = const Color(0xff535862);
  @override
  @override
  Color titleBlack2 = const Color(0xff151615);
  @override
  Color titleBlack3 = const Color(0xff414651);
  @override
  Color titleBlack4 = const Color(0xff181D27);
  //----------------------------------------------

  //greens
  @override
  Color green = const Color(0xff0C9D61);
  @override
  Color greenLight = const Color(0xff47B881);
  @override
  Color greenButton = const Color(0xFF079455);
  @override
  LinearGradient greenGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xff8CC88C),
      Color(0xff144614),
    ],
  );
  //------------------------------------------------
  //whites
  @override
  Color background = const Color(0xffFBFBFB);
  @override
  Color transparent = Colors.transparent;
  @override
  Color white = const Color(0xffFFFFFF);
  @override
  Color offWhite = const Color(0xffF2F2F2);
  @override
  Color offWhite2 = const Color(0xffF4F4F6);
  @override
  Color offWhite3 = const Color(0xffFFF2EE);
  //------------------------------------------------

  //reds
  @override
  Color red = const Color(0xffBC3A3A);
  @override
  Color red2 = const Color(0xffCC3956);
  @override
  Color red3 = const Color(0xffFF4C51);
  @override
  Color red4 = const Color(0xffD92D20);
  @override
  Color lightRed = const Color(0xfffef0f0);
  @override
  Color extraLightRed = const Color(0xffFBEDF6);
  @override
  Color darkRed = const Color(0xffF64C4C);
  //--------------------------------------------------

  //orangs
  @override
  Color orange = const Color(0xFFBC6F36);
  @override
  Color golden = const Color(0xFFFFF9EB);
  @override
  Color orange2 = const Color(0xFFFEDE88);
  @override
  Color orangeLight = const Color(0xffF67555);
  //-------------------------------------------------

  //blues
  @override
  Color highlightBlue = const Color(0xFF27678F);
  @override
  Color deepBlue = const Color(0xff1570EF);
  @override
  Color lightBlue = const Color(0xff1E82F7);
  @override
  Color blu100 = const Color(0xFF174A6B);
  @override
  Color blueText = const Color(0xFF120C45);
  //status
  @override
  Color pendingColor = const Color(0xffFE9B0E);
  @override
  Color latenessColor = const Color(0xffFCB503);
  @override
  Color pendingLightColor = const Color(0xffFFF5E7);

  @override
  Color rejectColor = const Color(0xffF05759);
  @override
  Color rejectLightColor = const Color(0xffFCE3E3);

  @override
  Color approveColor = const Color(0xff00C5AD);

  @override
  Color withdrawColor = const Color(0xff858585);
  @override
  Color withdrawLightColor = const Color(0xffEBEBEB);
  @override
  Color inCompleteColor = const Color(0xff1c275b);

  @override
  Color dayOffColor = const Color(0xff80D3F9);
  @override
  Color exceptionColor = const Color(0xff9E55F3);
  @override
  Color yellowColor = const Color(0xffDC6803);
  @override
  Color gold = const Color(0xffFF974A);
}
