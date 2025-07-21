import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';

class ProfileRequester extends Requester<UserDomainModel> {
  final int userId;

  ProfileRequester({required this.userId});

  @override
  Future<void> request({bool fromRemote = true}) async {
    if (hasNoData) {
      loadingState();
    }
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));
      
      // // Mock user data
      // final userData = UserDomainModel(
      //   id: userId.toString(),
      //   firstName: 'John',
      //   lastName: 'Doe',
      //   email: 'john@example.com',
      //   phone: '+1234567890',
      // );
      
      // successState(userData);
    } catch (e) {
      failedState(
        BaseError.unknown(),
        () => request(fromRemote: fromRemote),
      );
    }
  }
}
