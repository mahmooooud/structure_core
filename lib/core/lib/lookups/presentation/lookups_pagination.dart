part of 'lookups_imports.dart';

class CustomDropDownPagination<T> extends StatefulWidget {
  CustomDropDownPagination({
    this.decoration,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
    this.hasSearch = true,
    this.httpMethod = HttpMethod.POST,
    required this.url,
    this.validator,
    this.itemAsSync,
    required this.onItemSelect,
    this.selctedItem,
    this.selectedItemName,
    this.items,
    this.selctedId,
    this.userTypeId,
    this.isUsers = false,
    Key? key,
  }) : super(key: key);
  Widget? suffixIcon;
  Widget? prefixIcon;
  LookupsDataModel? selctedItem;
  String? selctedId;
  final int? userTypeId;
  final String? label;
  final String? selectedItemName;
  final Function(LookupsDataModel) onItemSelect;
  final Future<List<LookupsDataModel>> Function(String)? itemAsSync;
  final String? Function(dynamic)? validator;
  final String url;
  final InputDecoration? decoration;
  final HttpMethod? httpMethod;
  final List<LookupsDataModel>? items;
  bool enabled;
  final bool isUsers;
  final bool hasSearch;

  @override
  State<StatefulWidget> createState() {
    return CustomDropDownPaginationState<T>();
  }
}

class CustomDropDownPaginationState<T>
    extends State<CustomDropDownPagination<T>>
    with AutomaticKeepAliveClientMixin {
  LookupsData controller = LookupsData();
  StreamSubscription? departmentSubscription;
  late TextEditingController searchController;
  @override
  void initState() {
    searchController = TextEditingController();
    controller.isUsers = widget.isUsers;
    if (widget.items?.isEmpty ?? true) {
      controller.addLookupPageListener(
        widget.url,
        widget.httpMethod ?? HttpMethod.POST,
      );
    } else {
      controller.lookupsPagingController.appendLastPage(widget.items ?? []);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        height: context.height / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 60.h,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Center(
                  child: CustomText(
                "${widget.label}",
                textStyle: context.textTheme.bodyMedium!.copyWith(),
              )),
            ),
            if (widget.hasSearch)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  child: CustomTextFormField(
                    isValid: GenericBloc(),
                    hint: Translate.s.search,
                    onSave: (text) {},
                    onEditingComplete: () {
                      controller.onSearchChanged(widget.url, HttpMethod.POST,
                          searchController.text ?? "");
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    textInputAction: TextInputAction.search,
                    controller: searchController,
                    onChange: (text) {},
                    inputType: TextInputType.text,
                    label: Translate.s.search,
                  ),
                ),
              ),
            if (widget.hasSearch) Gaps.vGap10,
            Expanded(
              child: PagedListView.separated(
                pagingController: controller.lookupsPagingController,
                builderDelegate: PagedChildBuilderDelegate<LookupsDataModel>(
                  newPageErrorIndicatorBuilder: (context) {
                    return ShowErrorWidget(
                        state: controller.lookupsPagingController.error);
                  },
                  noItemsFoundIndicatorBuilder: (context) {
                    return Center(
                        child: Text(
                      Translate.s.no_data_found,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: context.colors.primary, fontSize: 16.sp),
                    ));
                  },
                  firstPageProgressIndicatorBuilder: (context) {
                    return Center(
                      heightFactor: 1,
                      widthFactor: 1,
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(
                          strokeWidth: 4,
                          color: context.colors.primary,
                        ),
                      ),
                    );
                  },
                  newPageProgressIndicatorBuilder: (context) {
                    return const Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: CupertinoActivityIndicator(),
                    ));
                  },
                  itemBuilder: (context, item, index) {
                    return InkWell(
                      onTap: () {
                        widget.onItemSelect.call(item);
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 5),
                        alignment: AlignmentDirectional.centerStart,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color:
                                        context.colors.backGroundColorGrey2))),
                        child: CustomText(
                          item.title ?? "",
                          textAlign: TextAlign.start,
                          textStyle: context.textTheme.bodyMedium!.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff010205),
                              overflow: TextOverflow.ellipsis),
                          maxLines: 1,
                        ),
                      ),
                    );
                  },
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
