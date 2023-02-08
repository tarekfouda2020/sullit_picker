import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';

abstract class HomeRemoteDataSource {

  Future<Either<Failure, UserModel>> getUser(bool param);


}