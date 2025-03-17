import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/navigation/base_route.dart';
import 'package:flutter_animate/flutter_animate.dart';

@lazySingleton
class LoadingHelper {
  void showLoadingDialog() {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorColor = Colors.transparent
      ..backgroundColor = Colors.transparent
      ..textColor = Colors.transparent
      ..maskType = EasyLoadingMaskType.black
      ..dismissOnTap = true
      ..maskColor = Colors.black.withOpacity(.3)
      ..boxShadow = <BoxShadow>[];
    EasyLoading.show(
        dismissOnTap: false,
        indicator: SvgAssets.getWidget(Res.small_logo,
                fit: BoxFit.contain, height: 80, width: 80)
            .animate(
              onPlay: (controller) => controller.repeat(),
            )
            .shimmer(
                color: const Color(0xffE18541),
                duration: const Duration(milliseconds: 1200),
                size: .5,
                colors: [
                  const Color(0xffE18541).withOpacity(.2),
                  const Color(0xffE18541)
                ])
            .flip(
                direction: Axis.horizontal,
                begin: 0,
                end: 1,
                duration: const Duration(milliseconds: 1300))
            .then()
            .shimmer(
                color: const Color(0xffE18541),
                duration: const Duration(milliseconds: 1200),
                size: .5,
                colors: [
                  const Color(0xffE18541),
                  const Color.fromARGB(255, 194, 102, 37).withOpacity(.2)
                ])
            .flip(
                direction: Axis.horizontal,
                begin: 0,
                end: 1,
                duration: const Duration(milliseconds: 1000))

        // .then()
        // .scale(
        //     begin: Offset(1, 1),
        //     end: Offset(0.3, 0.3),
        //     duration: Duration(milliseconds: 1500)),
        );
  }

  Widget showLoadingView({Color? color}) {
    return Center(
      child: SpinKitFoldingCube(
        color: color ??
            GetIt.I<AppRouter>().navigatorKey.currentContext!.colors.primary,
        size: 40.0,
      ),
    );
  }

  Widget showCatLoadingView({Color? color}) {
    return Center(
      child: SpinKitRipple(
        color: color ??
            GetIt.I<AppRouter>().navigatorKey.currentContext!.colors.primary,
        size: 40.0,
      ),
    );
  }

  void dismissDialog() {
    EasyLoading.dismiss();
  }
}
