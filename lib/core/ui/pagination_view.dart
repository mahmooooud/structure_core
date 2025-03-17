import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/core/ui/status_pages/empty_records_view.dart';
import 'package:ndf/core/ui/status_pages/loading_view.dart';
import 'package:ndf/core/ui/status_pages/page_error_view.dart';

class PaginationView<ItemType> extends StatelessWidget {
  final PagingController<int, ItemType> controller;
  final ItemWidgetBuilder<ItemType> itemBuilder;
  final Function()? onEmptyFunc;
  final Widget? loadingView;
  final EdgeInsetsGeometry? padding;

  const PaginationView(
      {Key? key,
      required this.controller,
      required this.itemBuilder,
      this.padding,
      this.onEmptyFunc,
      this.loadingView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, ItemType>(
      padding: padding ?? EdgeInsets.only(bottom: 20.h),
      pagingController: controller,
      builderDelegate: PagedChildBuilderDelegate<ItemType>(
        firstPageErrorIndicatorBuilder: (context) {
          return PageErrorView(
            action: () => controller.refresh(),
            actionName: 'TryAgain',
            errorMessage: '',
          );
        },
        newPageErrorIndicatorBuilder: (context) {
          return PageErrorView(
            action: () => controller.refresh(),
            actionName: 'TryAgain',
            errorMessage: '',
          );
        },
        noItemsFoundIndicatorBuilder: (context) {
          return EmptyRecordsView(
            onTap: onEmptyFunc ?? () {},
          );
        },
        firstPageProgressIndicatorBuilder: (context) {
          return loadingView ?? const LoadingView();
        },
        newPageProgressIndicatorBuilder: (context) {
          return const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: CupertinoActivityIndicator(),
          ));
        },
        itemBuilder: itemBuilder,
      ),
    );
  }
}
