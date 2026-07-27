import 'package:flutter_tdd/core/helpers/export.dart';

class GenericPaginateParams {
    int pageSize;
  int currentPage;
  bool refresh = true;

  GenericPaginateParams({
     this.pageSize = ApplicationConstants.paginationLimit,
    required this.refresh,
    required this.currentPage,
  });

  String paramsToQuery() => "?paginate=$pageSize&page=$currentPage";


    Map<String, dynamic> toJson() => {
      'paginate': pageSize,
      'page': currentPage,
    };
}