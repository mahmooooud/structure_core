part of 'lookups_imports.dart';

class LookupsData {
  final BaseBloc<LookupsModel> getLookupsCubit = BaseBloc();

  final PagingController<int, LookupsDataModel> lookupsPagingController =
      PagingController(firstPageKey: 1);
  final GenericBloc<PagingController<int, LookupsDataModel>> lookupsPagingBloc =
      GenericBloc(PagingController(firstPageKey: 1));
  ListsParameterModel filterModel = ListsParameterModel();
  Timer? searchOnStoppedTyping;
  bool isUsers = false;

  void addLookupPageListener(String url, HttpMethod method, {int? page}) async {
    lookupsPagingController.addPageRequestListener((pageKey) {
      getData(url, method, page ?? pageKey);
    });
    lookupsPagingBloc.onUpdateData(lookupsPagingController);
  }

  getData(String url, HttpMethod method, int page) {
    getLookupsCubit.loadingState();
    filterModel = filterModel.copyWith(pageNumber: page, pageSize: 30);
    if (page == 1) {
      lookupsPagingController.refresh();
    }
    GetIt.I
        .get<LookupsRepository>()
        .getLookup(url, method, filterModel)
        .then((value) {
      value.when(
          isSuccess: (data) {
            if (page == 1) {
              lookupsPagingController.itemList = [];
              lookupsPagingBloc.onUpdateData(lookupsPagingController);
            }
            final isLastPage = data!.data!.length < 30;
            if (isLastPage) {
              lookupsPagingController.appendLastPage(data.data!);
              lookupsPagingBloc.onUpdateData(lookupsPagingController);
            } else {
              final nextPageKey = page + 1;
              lookupsPagingController.appendPage(data.data!, nextPageKey);
              lookupsPagingBloc.onUpdateData(lookupsPagingController);
            }
          },
          isError: (e) {});
    });
  }

  getLookups(String url, HttpMethod method) {
    getLookupsCubit.loadingState();
    GetIt.I
        .get<LookupsRepository>()
        .getLookup(url, method, ListsParameterModel(pageNumber: 0, pageSize: 0))
        .then((value) {
      value.when(isSuccess: (data) {
        getLookupsCubit.successState(data);
      }, isError: (e) {
        // getLookupsCubit.failedState(e, getLookups(url, method, parentLookupId, isParent, value, isGuaard));
      });
    });
  }

  void onSearchChanged(String url, HttpMethod method, String text) {
    filterModel = ListsParameterModel(
        filterModel: FilterModel(
          title: text,
        ),
        pageSize: 30,
        pageNumber: 1);
    getData(url, method, 1);
  }
}
