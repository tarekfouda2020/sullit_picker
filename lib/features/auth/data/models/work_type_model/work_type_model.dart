

import 'package:flutter_tdd/features/auth/data/enum/work_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_type_model.freezed.dart';
part 'work_type_model.g.dart';

@unfreezed
@immutable
class WorkTypeModel with _$WorkTypeModel{
   WorkTypeModel._();
  @JsonSerializable(explicitToJson: true)
   factory WorkTypeModel({
    required String key,
    required String label,
    @JsonKey(name: 'is_selected',defaultValue: false) bool? selected,
  }) = _WorkTypeModel;

  factory WorkTypeModel.fromJson(Map<String, dynamic> json) =>
      _$WorkTypeModelFromJson(json);

   WorkTypeEnum getDriverType(){
     switch(key){
       case "single_store":
         return WorkTypeEnum.oneStore;
       case "multi_store":
         return WorkTypeEnum.myStore;
       case "freelancer":
         return WorkTypeEnum.freelancer;
       default:
         return WorkTypeEnum.freelancer;
     }
   }

   bool get isFreelancer => getDriverType() == WorkTypeEnum.freelancer;

}