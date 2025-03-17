import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.header,
    required this.body,
    this.headerHeight,
    this.floatingActionButton,
    this.hasAppBar,
    this.automaticallyImplyLeading,
    this.appBarTitle,
    this.appBar,
    this.stack,
    this.onPop,
    this.margin,
    this.actions,
  });

  final Widget body;
  final Widget? stack;
  final Widget? header;
  final Widget? floatingActionButton;
  final double? headerHeight;
  final bool? hasAppBar;
  final EdgeInsetsGeometry? margin;
  final bool? automaticallyImplyLeading;
  final String? appBarTitle;
  final PreferredSizeWidget? appBar;
  final Function()? onPop;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: false,
        appBar: (hasAppBar ?? false)
            ? appBar ??
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: Image.asset(
                    Res.appbar_bg,
                    fit: BoxFit.fill,
                  ),
                  titleSpacing: automaticallyImplyLeading ?? false ? 8 : null,
                  iconTheme: const IconThemeData(
                    color: Colors.white, //change your color here
                  ),
                  title: CustomText(
                    appBarTitle ?? '',
                    textStyle: context.textTheme.titleSmall!
                        .copyWith(color: context.colors.white, height: 1),
                  ),
                  centerTitle: false,
                  leadingWidth: 40.w,
                  actions: actions,
                  leading: automaticallyImplyLeading ?? false
                      ? Padding(
                          padding:
                              EdgeInsetsDirectional.only(start: 10.w, top: 4.h),
                          child: Container(
                            height: 20,
                            width: 20,
                            color: Colors.transparent,
                            child: Center(
                              child: IconButton(
                                onPressed: onPop ??
                                    () {
                                      Navigator.pop(context);
                                    },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        )
                      : null,
                  automaticallyImplyLeading: automaticallyImplyLeading ?? false,
                )
            : null,
        backgroundColor: context.colors.background,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: floatingActionButton,
        body: LayoutBuilder(
            builder: (context, constraints) => GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Stack(
                    children: [
                      Container(
                          width: context.width,
                          height: context.height,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Res.screens_bg),
                                  fit: BoxFit.fill)),
                          child: Column(
                            children: [
                              Visibility(
                                visible: header != null,
                                replacement: Gaps.empty,
                                child: SizedBox(
                                  width: context.width,
                                  height: headerHeight ?? 220.h,
                                  child: header,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: context.height,
                                  width: context.width,
                                  margin: margin,
                                  padding: EdgeInsets.only(top: 5.r),
                                  decoration: BoxDecoration(
                                      color: context.colors.primary,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(18.r),
                                          topRight: Radius.circular(18.r))),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: context.colors.background,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.r),
                                            topRight: Radius.circular(20.r))),
                                    child: body,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      stack ?? Gaps.empty
                    ],
                  ),
                )));
  }
}
