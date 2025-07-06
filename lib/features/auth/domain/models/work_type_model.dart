import 'package:flutter_tdd/features/auth/data/enum/work_type_enum.dart';

class WorkTypeModel {
  bool isSelected;
  final WorkTypeEnum type;

  WorkTypeModel({required this.type,this.isSelected = false});
}