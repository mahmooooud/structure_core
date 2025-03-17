part of 'lookups_imports.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown({
    this.decoration,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
    this.httpMethod = HttpMethod.POST,
    required this.url,
    this.validator,
    this.itemAsSync,
    required this.onSelect,
    this.selctedItem,
    this.items,
    this.selctedId,
    Key? key,
  }) : super(key: key);
  Widget? suffixIcon;
  Widget? prefixIcon;
  dynamic selctedItem;
  String? selctedId;
  final String? label;
  final Future<List<LookupsDataModel>> Function(String)? itemAsSync;
  Function onSelect;
  final String? Function(dynamic)? validator;
  final String url;
  final InputDecoration? decoration;
  final HttpMethod? httpMethod;
  final List<LookupsDataModel>? items;
  bool enabled;

  @override
  State<StatefulWidget> createState() {
    return LookupsScreenState();
  }
}

class LookupsScreenState extends State<CustomDropDown>
    with AutomaticKeepAliveClientMixin {
  LookupsData controller = LookupsData();
  StreamSubscription? departmentSubscription;
  @override
  void initState() {
    if (widget.items == null) {
      if (widget.httpMethod == HttpMethod.GET) {
        controller.getLookups(widget.url, HttpMethod.GET);
      } else {
        controller.getLookups(
          widget.url,
          HttpMethod.POST,
        );
      }
    } else {
      if (kDebugMode) {
        print(json.encode(widget.items));
      }
      controller.getLookupsCubit.successState(LookupsModel(data: widget.items));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseBloc<LookupsModel>, BaseState<LookupsModel>>(
      bloc: controller.getLookupsCubit,
      builder: (context, state) {
        return state.maybeWhen(
          success: (model) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Theme(
              data: ThemeData(canvasColor: Colors.transparent),
              child: DropdownSearch<LookupsDataModel>(
                validator: widget.validator,
                enabled: widget.enabled,
                compareFn: (item1, item2) => item1.nameEn == item2.nameEn,
                popupProps: PopupProps.bottomSheet(
                  searchFieldProps: TextFieldProps(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsetsDirectional.only(start: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide:
                            BorderSide(color: context.colors.grey2, width: 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide:
                            BorderSide(color: context.colors.grey2, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide:
                            BorderSide(color: context.colors.grey2, width: 1),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide:
                            BorderSide(color: context.colors.red, width: 1.w),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide:
                            BorderSide(color: context.colors.red, width: 1),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        borderSide: const BorderSide(
                            color: const Color(0xFFD2D2D7), width: 1),
                      ),
                    ),
                  ),
                  title: Container(
                    height: 60.h,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Center(
                        child: CustomText(
                      "${Translate.s.select} ${widget.label}",
                      textStyle: context.textTheme.titleMedium!
                          .copyWith(color: context.colors.grey),
                    )),
                  ),
                  itemBuilder: (con, model, b) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      alignment: AlignmentDirectional.centerStart,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: context.colors.grey2))),
                      child: CustomText(
                        model.name != null
                            ? model.name ?? ""
                            : (AppConfig().currentLanguageCode == 'ar')
                                ? model.nameAr!
                                : model.nameEn!,
                        textAlign: TextAlign.start,
                        textStyle: context.textTheme.bodyMedium!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff010205),
                            overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      ),
                    );
                  },
                  showSelectedItems: true,
                  showSearchBox: true,

                  // constraints: BoxConstraints(maxHeight: 400.h),
                ),
                items: model!.data ?? [],
                asyncItems: widget.itemAsSync,
                dropdownButtonProps: DropdownButtonProps(
                  icon: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: widget.enabled
                        ? context.colors.primary
                        : context.colors.grey2,
                  ),
                ),
                selectedItem: widget.selctedId != null
                    ? model.data!.firstWhere(
                        (element) => element.id == widget.selctedId,
                        orElse: () => LookupsDataModel(nameAr: "", nameEn: ""),
                      )
                    : widget.selctedItem,
                dropdownBuilder: (con, model) {
                  return CustomText(
                      (model == null)
                          ? "${Translate.s.select} ${widget.label}"
                          : model.name?.isNotEmpty ?? false
                              ? model.name ?? ""
                              : (AppConfig().currentLanguageCode == 'ar')
                                  ? model.nameAr ?? ""
                                  : model.nameEn ?? "",
                      textAlign: TextAlign.start,
                      textStyle: context.textTheme.bodyMedium!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: (model == null)
                              ? context.colors.grey2
                              : Color(0xff010205)));
                },
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: widget.decoration ??
                      InputDecoration(
                        contentPadding: EdgeInsetsDirectional.only(start: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          borderSide:
                              BorderSide(color: context.colors.grey2, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          borderSide:
                              BorderSide(color: context.colors.grey2, width: 1),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                          borderSide:
                              BorderSide(color: context.colors.red, width: 1.w),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.r)),
                          borderSide:
                              BorderSide(color: context.colors.red, width: 1),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.r)),
                          borderSide: const BorderSide(
                              color: const Color(0xFFD2D2D7), width: 1),
                        ),
                      ),
                ),
                onChanged: (v) {
                  widget.onSelect(v);

                  widget.selctedItem = v;
                },
                filterFn: (item, filter) =>
                    (item.nameEn?.toLowerCase().contains(filter) ??
                        false ||
                            (item.nameAr?.toLowerCase().contains(filter) ??
                                false)) ||
                    (item.name?.toLowerCase().contains(filter) ?? false),
              ),
            ),
          ),
          failure: (error, callback) => const Text('ERROR'),
          orElse: () => const SizedBox(),
          loading: () => DimmedDropDown(
            text: widget.label.toString(),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
