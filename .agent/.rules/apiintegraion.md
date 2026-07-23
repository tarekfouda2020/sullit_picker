---
trigger: model_decision
description: when making api integration
---

# API Integration Guide

## 1. Standard API Integration (Single Response)

### Steps

1. **Create Freezed Model if response tyep is model or a list of models** in `lib/features/<feature>/data/models/<model_name>/`
   ```dart
   @freezed
   class MyModel with _$MyModel {
     const factory MyModel({
       required int id,
       required String name,
       @JsonKey(name: 'snake_case_field') required String camelCaseField,
     }) = _MyModel;

     factory MyModel.fromJson(Map<String, dynamic> json) =>
         _$MyModelFromJson(json);
   }
   ```
   Run `dart run build_runner build --delete-conflicting-outputs`

2. **Add API Name** in `lib/core/http/generic_http/api_names.dart`
   ```dart
   static const String myEndpoint = "my-endpoint";
   ```

3. **Abstract Data Source** in `lib/features/<feature>/data/data_sources/`
   ```dart
   abstract class MyRemoteDataSource {
     Future<MyResult<MyModel>> getData(MyParams params);
   }
   ```

4. **Implement Data Source** with `@Injectable(as: MyRemoteDataSource)`
   ```dart
   HttpRequestModel model = HttpRequestModel(
     url: ApiNames.myEndpoint,
     requestMethod: RequestMethod.get,
     responseType: ResType.model,           // ResType.model for single object
     responseKey: (data) => data['data'],
     refresh: params.fromRemote,
     requestBody: params.toJson(),
     toJsonFunc: (json) => MyModel.fromJson(json),
    /// if the resType is List 
     ''''   toJsonFunc: (json) => List<MyModel>.from(
        json.map((item) => MyModel.fromJson(item)),
      ),'''    

   );
   return await GenericHttpImpl<MyModel>()(model);
   ```

5. **Abstract Repository** in `lib/features/<feature>/domain/repositories/`

6. **Implement Repository** with `@Injectable(as: MyRepository)` — delegates to data source via `getIt`

7. **Requester** (if using `RequesterConsumer` pattern) in `lib/features/<feature>/domain/requesters/`

8. **Params for api method** in `lib/features/<feature>/domain/entity/


9. use in the ui RequisterConsumer and for making shimmer
 use custoom shimmer widgets in lib/core/widgets 
and we make shimmer for the details of the widget 


  if data sources files and repo files are exist modify on the exist one else make a new ones 



---
### api integrate type

** if it an api post ask first is this api will take requestBody or will take a query params if i did not define for it in post api

1. **Normal Get Api**

  HttpRequestModel model = HttpRequestModel(
     url: ApiNames.myEndpoint,
     requestMethod: RequestMethod.get,
     responseType: ResType.model,           // ResType.model for single object
     responseKey: (data) => data['data'], // or if i define a responseKey

     refresh: params,
     toJsonFunc: (json) => MyModel.fromJson(json),
  /// if the resType is List 
     ''   toJsonFunc: (json) => List<MyModel>.from(
        json.map((item) => MyModel.fromJson(item)),
      ),'' 
   );
   return await GenericHttpImpl<MyModel>()(model);

2. **Api Get with jsonBody**
the same like 'Normal Get Api' and by adding
      requestBody: parmas.toJson(),
     refresh: params.fromRemote,

3. **Api Get with queryParams**
the same like 'Normal Get Api'
/// queryParams() contain other fields in the parmas class without fromRemote unless i specific some params to use
      url: ApiNames.myEndpoint+params.queryParams()
        refresh: params.fromRemote,

4. **Normal Post Api**
    the same like 'Normal Get Api'
    but by make requestMethod: RequestMethod.post,
   no refresh parameter in HttpRequestModel, no params will  parsed in the method parameters unless i define for you and make 
showLoader: true

5. **Post Api with query params**
    the same like 'Normal Get Api'
    but by make requestMethod: RequestMethod.post
     url: ApiNames.myEndpoint+params.queryParams()

6. **Post Api with toJson body**
    the same like 'Normal Get Api'
    but by make requestMethod: RequestMethod.post
    requestBody: parmas.toJson(),

---


> ** if its an api pagintation we will use Paginated List API Integration 
only if i say it a pagintation api

## 2. Paginated List API Integration

Use this pattern when the API returns a paginated list (e.g. products, addresses).

### Steps

1. **Create Freezed Model** (same as above)

2. **Add API Name** (same as above)

3. **Data Source** — use `ResType.list` and `responseKey` pointing to the list path:
   ```dart
   Future<MyResult<List<MyModel>>> getItems(GenericPaginateParams params) async {
     HttpRequestModel model = HttpRequestModel(
       url: ApiNames.myEndpoint,
       requestMethod: RequestMethod.get,
       responseType: ResType.list,            // ResType.list for arrays
       responseKey: (data) => data['data']['items'],
       refresh: params.refresh,
       requestBody: params.toJson(),
       toJsonFunc: (json) => List<MyModel>.from(
         json.map((item) => MyModel.fromJson(item)),
       ),
     );
     return await GenericHttpImpl<List<MyModel>>()(model);
   }
   ```

4. **Repository** — same pattern, delegates to data source

5. **Controller** — uses `PagingController` from `infinite_scroll_pagination`:
   ```dart
   final PagingController<int, MyModel> pagingController = PagingController(
     firstPageKey: 1,
   );

   MyController() {
     getItems(1, refresh: false);  // initial load from cache
     pagingController.addPageRequestListener((pageKey) {
       getItems(pageKey);
     });
   }

   Future<void> getItems(int currentPage, {bool refresh = true}) async {
     var params = GenericPaginateParams(
       refresh: refresh,
       currentPage: currentPage,
     );
     var result = await getIt.get<MyRepository>().getItems(params);
     result.when(
       isSuccess: (data) {
         final isLastPage =
             (data ?? <MyModel>[]).length < ApplicationConstants.paginationLimit;
         if (currentPage == 1) {
           pagingController.itemList = [];
         }
         if (isLastPage) {
           pagingController.appendLastPage(data ?? []);
         } else {
           pagingController.appendPage(data ?? [], currentPage + 1);
         }
       },
       isError: (error) {
         pagingController.error = error;
       },
     );
   }
   ```

6. **UI Widget** — use `PagedListView` or `PagedGridView`:
   ```dart
   PagedListView<int, MyModel>.separated(
     pagingController: controller.pagingController,
     separatorBuilder: (context, index) => Gaps.hGap12,
     builderDelegate: PagedChildBuilderDelegate<MyModel>(
       itemBuilder: (context, item, index) => MyItemWidget(item: item),
       firstPageProgressIndicatorBuilder: (context) => MyShimmerWidget(),
       noItemsFoundIndicatorBuilder: (context) => Center(
         child: Text('No items found'),
       ),
     ),
   )
   ```

### Key Points
- `GenericPaginateParams` handles `paginate` (page size) and `page` (current page)
- Pass `params.refresh` to `HttpRequestModel.refresh` to control caching
- First call uses `refresh: false` to load from cache, subsequent calls use `refresh: true`
- `ApplicationConstants.paginationLimit` determines the page size and isLastPage check
- Always dispose `pagingController` in the controller's `dispose()` method

### Imports Needed
```dart
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:base_structure/core/constants/app_constants.dart';
import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/helpers/generic_paginate_params.dart';
```

> **Golden Rule:** When in doubt, find the closest existing example in the codebase and follow its pattern exactly.

> **Golden Rule For Get Api:** after ending make shimmer for the success view 
usimg custom shimmer widgets i use 
in lib/core/widgets
we make shimmer for the details of the page 
.