
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/data/models/work_type_model/work_type_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/confirm_reset_password_params.dart';

abstract class AuthRepositories {

  Future<MyResult<UserModel>> registerUser(RegisterParams params);

  Future<MyResult<UserModel>> sendLogin(LoginParams params);

  Future<MyResult<List<WorkTypeModel>>> getWorkTypes();

  Future<MyResult<String>> verifyPhone(VerifyParams params);

  Future<MyResult<String>> verifyEmail(VerifyParams params);

  Future<MyResult<String>> forgotPassword(VerifyParams params);

  Future<MyResult<String>> confirmResetPassword(ConfirmResetPasswordParams params);

}