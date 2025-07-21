import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/data/models/work_type_model/work_type_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepositories)
class ImplAuthRepositories  extends AuthRepositories{

  final AuthDataSource dataSource = getIt<AuthDataSource>();

  @override
  Future<MyResult<UserModel>> registerUser(RegisterParams params) async{
    return await dataSource.registerUser(params);
  }

  @override
  Future<MyResult<List<WorkTypeModel>>> getWorkTypes() async {
    return await dataSource.getWorkTypes();
  }

  @override
  Future<MyResult<String>> verifyPhone(VerifyParams params)async{
    return await dataSource.verifyPhone(params);
  }

  @override
  Future<MyResult<String>> verifyEmail(VerifyParams params)async{
    return  await dataSource.verifyEmail(params);
  }

  @override
  Future<MyResult<UserModel>> sendLogin(LoginParams params)async {
    return await dataSource.sendLogin(params);
  }
}