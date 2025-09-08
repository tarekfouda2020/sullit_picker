import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/orders/data/models/store_model/store_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserInitial());

  void onUpdateUserData(UserModel? model){
    emit(UserUpdateState(model: model, changed: !state.changed));
  }


  void removeSelectedStores(){
    if(state.model?.workWithOneStore == true){
      for(var store in state.model?.stores ?? <StoreModel>[]){
        store.isSelected = false;
      }
    }
    emit(UserUpdateState(model: state.model, changed: !state.changed));
}

}
