import 'package:flutter_tdd/features/notifications/domain/entity/generic_pagin_params.dart';
import 'package:get/get.dart';

class ProductSearchParams {
  final String text;
  final GenericPaginateParams paginParams;

  ProductSearchParams({required this.text, required this.paginParams});

  Map<String, dynamic> toJson() => {
        if(text.trim().isNotEmpty)'search': text,
        ...paginParams.toJson(),
      };
}
