import 'package:flutter_tdd/core/localization/translate.dart';

enum WorkTypeEnum {

 oneStore,
  multiStores,
  freelancer;


 String getTitle() => switch(this){
  oneStore => Translate.s.work_at_one_store_only,
  multiStores => Translate.s.work_at_many_stores,
  freelancer => Translate.s.work_as_a_freelance,
 };

}