
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/instructions_model/instructions_model.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/data/models/work_type_model/work_type_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/change_password_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/verify_params.dart';
import 'package:flutter_tdd/features/auth/domain/entity/confirm_reset_password_params.dart';

abstract class AuthRepositories {


  Future<MyResult<UserModel>> sendLogin(LoginParams params);

  Future<MyResult<String>> sendChangePassword(ChangePasswordParams params);

  Future<MyResult<String>> forgotPassword(VerifyParams params);

  Future<MyResult<String>> confirmResetPassword(ConfirmResetPasswordParams params);

  Future<MyResult<String>> logout();

  Future<MyResult<InstructionsModel>> getInstructions();

  Future<MyResult<String>> appInstructionsAgree();
}