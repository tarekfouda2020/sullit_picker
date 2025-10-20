
import 'package:flutter_tdd/features/home/domain/models/local_product/local_product.dart';
import 'package:hive_flutter/hive_flutter.dart';


part 'local_orders.g.dart';

@HiveType(typeId: 1)
class LocalOrders extends HiveObject{
  @HiveField(0)
  final List<LocalProduct> assigned;
  @HiveField(1)
  final List<LocalProduct> newOrders;

  LocalOrders({required this.assigned, required this.newOrders});


}