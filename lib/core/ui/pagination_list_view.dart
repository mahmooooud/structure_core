import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/ui/status_pages/empty_records_view.dart';
import 'package:ndf/core/ui/status_pages/page_error_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../localization/translate.dart';

class PaginationListView<ItemType> extends StatelessWidget {
  final PagingController<int, ItemType> controller;
  final ItemWidgetBuilder<ItemType> itemBuilder;
  final Function()? onEmptyFunc;
  final bool hasEmpty;
  final bool shrinkWrap;
  final ScrollPhysics? scrollPhysics;
  final Widget? loadingView;
  final Widget? separatorBuilder;
  final EdgeInsetsGeometry? padding;
  final String? emptyTitle;
  final String? emptyIcon;
  const PaginationListView(
      {Key? key,
      required this.controller,
      required this.itemBuilder,
      this.padding,
      this.scrollPhysics,
      this.shrinkWrap = true,
      this.hasEmpty = true,
      this.onEmptyFunc,
      this.loadingView,
      this.separatorBuilder,
      this.emptyTitle,
      this.emptyIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, ItemType>.separated(
      padding: padding ?? EdgeInsets.only(bottom: 20.h),
      pagingController: controller,
      physics: scrollPhysics ?? const AlwaysScrollableScrollPhysics(),
      shrinkWrap: shrinkWrap,
      cacheExtent: 9999999999999,
      builderDelegate: PagedChildBuilderDelegate<ItemType>(
        firstPageErrorIndicatorBuilder: (context) {
          return PageErrorView(
            action: () => controller.refresh(),
            actionName: Translate.s.try_again,
            errorMessage: controller.error.toString(),
          );
        },
        newPageErrorIndicatorBuilder: (context) {
          return PageErrorView(
            action: () => controller.refresh(),
            actionName: Translate.s.try_again,
            errorMessage: controller.error.toString(),
          );
        },
        noItemsFoundIndicatorBuilder: (context) {
          return hasEmpty
              ? Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 160.h),
                    child: EmptyRecordsView(
                      title: emptyTitle,
                      icon: emptyIcon,
                      onTap: onEmptyFunc ?? () {},
                    ),
                  ),
                )
              : Gaps.empty;
        },
        firstPageProgressIndicatorBuilder: (context) {
          return loadingView ??
              Center(
                child: SpinKitPulse(
                  color: context.colors.primary,
                  size: 70,
                ),
              );
        },
        newPageProgressIndicatorBuilder: (context) {
          return const Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CupertinoActivityIndicator(),
          ));
        },
        itemBuilder: itemBuilder,
      ),
      separatorBuilder: (context, index) => separatorBuilder ?? Gaps.vGap10,
    );
  }
}
