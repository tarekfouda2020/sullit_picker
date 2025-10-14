import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/data/models/instructions_model/instructions_model.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/data/models/work_type_model/work_type_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/change_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/confirm_reset_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepositories)
class ImplAuthRepositories  extends AuthRepositories{

  final AuthDataSource dataSource = getIt<AuthDataSource>();


  @override
  Future<MyResult<String>> forgotPassword(VerifyParams params) async {
    return await dataSource.forgotPassword(params);
  }

  @override
  Future<MyResult<String>> confirmResetPassword(ConfirmResetPasswordParams params) async {
    return await dataSource.confirmResetPassword(params);
  }

  @override
  Future<MyResult<UserModel>> sendLogin(LoginParams params)async {
    return await dataSource.sendLogin(params);
  }

  @override
  Future<MyResult<String>> logout() async {
    return await dataSource.logout();
  }

  @override
  Future<MyResult<String>> sendChangePassword(ChangePasswordParams params)async {
    return await dataSource.sendChangePassword(params);
  }

  @override
  Future<MyResult<InstructionsModel>> getInstructions()async {
    return await dataSource.getInstructions();
  }

  @override
  Future<MyResult<String>> appInstructionsAgree()async {
    return await dataSource.appInstructionsAgree();
  }
}