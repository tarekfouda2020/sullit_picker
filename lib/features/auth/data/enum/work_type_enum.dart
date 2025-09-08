import 'package:flutter_tdd/core/localization/translate.dart';

enum WorkTypeEnum {

 oneStore,
  multiStores,
  freelancer;


 String getTitle() {
  switch (this) {
   case oneStore:
    return Translate.s.work_at_one_store_only;
   case multiStores:
    return Translate.s.work_at_many_stores;
   case freelancer:
    return Translate.s.work_as_a_freelance;
  }
 }

}