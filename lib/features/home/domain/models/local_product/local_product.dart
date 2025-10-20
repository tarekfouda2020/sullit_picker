

import 'package:hive/hive.dart';

part 'local_product.g.dart';

@HiveType(typeId: 2)
class LocalProduct extends HiveObject {

  @HiveField(0)
   int qty;
  @HiveField(1)
  final double progress;

  LocalProduct({required this.qty, required this.progress});




}