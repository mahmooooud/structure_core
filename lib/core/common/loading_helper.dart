import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:structure_core/core/common/extension/context.dart';
import 'package:structure_core/core/init_core.dart';
import 'package:structure_core/core/common/resource.dart';

@lazySingleton
class LoadingHelper {
  void showLoadingDialog() {
    EasyLoading.show(
      maskType: EasyLoadingMaskType.black,
      dismissOnTap: false,
      indicator: SpinKitCubeGrid(
        size: 40.0.sp,
        itemBuilder: (context, index) {
          return Container(
            height: 10.h,
            width: 10.w,
            margin: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: context.colors.primary,
              shape: BoxShape.circle,
            ),
          );
        },
      ),
    );
  }

  Widget showLoadingView({Color? color}) {
    return Center(
      child: SpinKitFoldingCube(
        color: color ?? InitCore().context.colors.primary,
        size: 40.0.sp,
      ),
    );
  }



  Widget showCatLoadingView({Color? color}) {
    return Center(
      child: SpinKitRipple(
        color: color ?? InitCore().context.colors.primary,
        size: 40.0.sp,
      ),
    );
  }

  void dismissDialog() {
    EasyLoading.dismiss();
  }


}
