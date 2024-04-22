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

class CustomDropDownMultiSelectState<T>  extends State<CustomDropDownMultiSelect<T>>
    with AutomaticKeepAliveClientMixin {
  LookupsData controller = LookupsData();
  StreamSubscription? departmentSubscription;
  List<LookupsDataModel> selectedItems = [];
  late TextEditingController searchController;
  @override
  void initState() {
    searchController = TextEditingController();
    controller.addLookupPageListener(widget.url, widget.httpMethod ?? HttpMethod.POST,);
    controller.isUsers = widget.isUsers;
    selectedItems = widget.selectedItems ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60.h,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Center(
                child: CustomText(
                  "${Translate.s.select} ${widget.label}",
                  textStyle: context.textTheme.headline5!.copyWith(
                      color: context.colors.grey
                  ),
                )
            ),
          ),
          if(widget.hasSearch)
            CustomTextFormField(
            hint: Translate.s.search,
            onSave: (text) {},
            onEditingComplete: (){
              controller.onSearchChanged(widget.url, HttpMethod.POST,searchController.text ?? "");
              FocusManager.instance.primaryFocus?.unfocus();
            },
            textInputAction: TextInputAction.search,
            controller: searchController,
            onChange: (text){},
            inputType: TextInputType.text,
            label: '',
          ),
          Gaps.vGap10,
          Expanded(
            child: PagedListView.separated(
              pagingController: controller.lookupsPagingController,
              builderDelegate: PagedChildBuilderDelegate<LookupsDataModel>(
                newPageErrorIndicatorBuilder: (context) {
                  return ShowErrorWidget(state: controller.lookupsPagingController.error);
                },
                noItemsFoundIndicatorBuilder: (context){
                  return Center(
                      child: Text(
                        Translate.s.no_data_found,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(color: context.colors.primary, fontSize: 16.sp),
                      )
                  );
                },
                firstPageProgressIndicatorBuilder: (context) {
                  return const Center(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(
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
                    return BlocBuilder<GenericBloc<bool>,GenericState<bool>>(
                      bloc: item.isSelectedBloc,
                      builder: (context,state){
                        if(item.isActive ?? false){
                          return InkWell(
                            onTap: (){
                              if(!selectedItems.contains(item)){
                                selectedItems.add(item);
                                item.isSelectedBloc?.onUpdateData(true);
                              }else{
                                selectedItems.remove(item);
                                item.isSelectedBloc?.onUpdateData(false);
                              }

                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: context.colors.grey2
                                      )
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: CustomText(
                                      item.name != null? item.name ?? "" : item.fullName != null ? item.fullName ?? "" : (AppConfig().currentLanguageCode == 'ar')
                                          ? item.nameAr!
                                          : item.nameEn!,
                                      textAlign: TextAlign.start,
                                      textStyle: context.textTheme.bodyText1!.copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff010205),
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  Visibility(
                                    visible: (selectedItems.map((e) => e.id).toList().contains(item.id)) || (state.data ?? false),
                                    child: Icon(Icons.check,color: context.colors.primary,size: 18,),
                                  )
                                ],
                              ),
                            ),
                          );
                        }else{
                          return Container();
                        }
                      },
                    );
                },
              ),
              separatorBuilder: (context, index) => SizedBox(height: 0),
            ),
          ),
          AppTextButton(
            text: Translate.s.confirm,
            onPressed: (){
              widget.onItemsSelect.call(selectedItems.isEmpty ? null : selectedItems);
              Navigator.pop(context);
            },
            color: context.colors.primaryLight,

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
