part of 'lookups_imports.dart';

class CustomDropDownMultiSelect<T> extends StatefulWidget {
  CustomDropDownMultiSelect({
    this.decoration,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
    this.httpMethod = HttpMethod.POST,
    required this.url,
    this.validator,
    this.itemAsSync,
    required this.onItemsSelect,
    this.selectedItems,
    this.selectedItemName,
    this.items,
    this.selctedId,
    this.hasSearch = true,
    this.isUsers = false,
    super.key,
  });
  Widget? suffixIcon;
  Widget? prefixIcon;
  final List<LookupsDataModel>? selectedItems;
  String? selctedId;
  final String? label;
  final String? selectedItemName;
  final Function(List<LookupsDataModel>?) onItemsSelect;
  final Future<List<LookupsDataModel>> Function(String)? itemAsSync;
  final String? Function(dynamic)? validator;
  final String url;
  final InputDecoration? decoration;
  final HttpMethod? httpMethod;
  final List<LookupsDataModel>? items;
  bool enabled;
  bool isUsers;
  final bool hasSearch;

  @override
  State<StatefulWidget> createState() {
    return CustomDropDownMultiSelectState<T>();
  }
}

class CustomDropDownMultiSelectState<T>
    extends State<CustomDropDownMultiSelect<T>>
    with AutomaticKeepAliveClientMixin {
  LookupsData controller = LookupsData();
  StreamSubscription? departmentSubscription;
  List<LookupsDataModel> selectedItems = [];
  late TextEditingController searchController;
  @override
  void initState() {
    searchController = TextEditingController();
    if (widget.items?.isEmpty ?? true) {
      controller.addLookupPageListener(
        widget.url,
        widget.httpMethod ?? HttpMethod.POST,
      );
    } else {
      controller.lookupsPagingController.appendLastPage(widget.items!);
    }
    controller.isUsers = widget.isUsers;
    selectedItems = widget.selectedItems ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
      // padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(18.h),
                child: Row(
                  children: [
                    Icon(
                      Icons.close,
                      color: context.colors.iconGrey,
                    ).press(onTap: () {
                      GetIt.I<AppRouter>().pop();
                    }),
                    Gaps.hGap10,
                    CustomText(
                      widget.label ?? '',
                      textStyle: context.textTheme.bodyLarge!,
                    )
                  ],
                ),
              ),
              HLine(
                verticalPadding: 0,
                thicknes: 1,
                color: context.colors.backGroundColorGrey2,
              ),
            ],
          ),
          if (widget.hasSearch)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: CustomTextFormField(
                isValid: GenericBloc(),
                hint: Translate.s.search,
                onSave: (text) {},
                onEditingComplete: () {
                  controller.onSearchChanged(
                      widget.url, HttpMethod.POST, searchController.text ?? "");
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                textInputAction: TextInputAction.search,
                controller: searchController,
                onChange: (text) {},
                inputType: TextInputType.text,
                hasPadding: false,
                label: '',
              ),
            ),
          Gaps.vGap10,
          Expanded(
            child: PagedListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
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
                        color: context.colors.primary,
                        strokeWidth: 4,
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
                  print("item ${item.title}");
                  return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                    bloc: item.isSelectedBloc,
                    builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          if (!selectedItems.contains(item)) {
                            selectedItems.add(item);
                            item.isSelectedBloc?.onUpdateData(true);
                          } else {
                            selectedItems.remove(item);
                            item.isSelectedBloc?.onUpdateData(false);
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          height: 50.h,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: context
                                          .colors.backGroundColorGrey2))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: CustomText(
                                  item.title ?? "",
                                  textAlign: TextAlign.start,
                                  textStyle: context.textTheme.bodyMedium!
                                      .copyWith(
                                          color: context.colors.titleBlack),
                                  maxLines: 1,
                                ),
                              ),
                              Visibility(
                                visible: (selectedItems
                                        .map((e) => e.id)
                                        .toList()
                                        .contains(item.id)) ||
                                    (state.data ?? false),
                                child: Icon(
                                  Icons.check,
                                  color: context.colors.primary,
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              separatorBuilder: (context, index) => SizedBox(height: 0),
            ),
          ),
          AppTextButton(
            text: Translate.s.confirm,
            onPressed: () {
              widget.onItemsSelect
                  .call(selectedItems.isEmpty ? null : selectedItems);
              Navigator.pop(context);
            },
            color: context.colors.primary,
          ),
        ],
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
