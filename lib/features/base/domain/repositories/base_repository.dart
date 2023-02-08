
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/auth/domain/models/user_domain_model.dart';

abstract class BaseRepository {

  Future<Either<Failure, UserDomainModel>> getUser(bool param);

}