// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/country_picker.dart' as _i297;
import 'package:flutter_tdd/core/helpers/device_id_helper.dart' as _i177;
import 'package:flutter_tdd/core/helpers/file_service.dart' as _i323;
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart'
    as _i279;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i769;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i443;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i934;
import 'package:flutter_tdd/core/helpers/location_service.dart' as _i320;
import 'package:flutter_tdd/core/helpers/psermission_services.dart' as _i577;
import 'package:flutter_tdd/core/helpers/share_services.dart' as _i940;
import 'package:flutter_tdd/core/helpers/user_services_helper.dart' as _i690;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i652;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i146;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i687;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i1065;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i20;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i106;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart'
    as _i627;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i466;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i974;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i893;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i45;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i798;
import 'package:flutter_tdd/core/network/network_info.dart' as _i407;
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart'
    as _i662;
import 'package:flutter_tdd/features/auth/data/data_source/impl_auth_data_source.dart'
    as _i23;
import 'package:flutter_tdd/features/auth/data/repositories/impl_auth_repositories.dart'
    as _i988;
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart'
    as _i674;
import 'package:flutter_tdd/features/auth/domain/usecases/get_work_types_usecase.dart'
    as _i840;
import 'package:flutter_tdd/features/home/data/data_source/home_data_source.dart'
    as _i973;
import 'package:flutter_tdd/features/home/data/data_source/impl_home_data_source.dart'
    as _i409;
import 'package:flutter_tdd/features/home/data/repositories/impl_home_repositories.dart'
    as _i200;
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart'
    as _i141;
import 'package:flutter_tdd/features/subscriptions/data/data_source/impl_subscription_data_source.dart'
    as _i267;
import 'package:flutter_tdd/features/subscriptions/data/data_source/subscription_data_source.dart'
    as _i201;
import 'package:flutter_tdd/features/subscriptions/data/repositories/impl_subscription_repositories.dart'
    as _i96;
import 'package:flutter_tdd/features/subscriptions/domain/repositories/subscription_repositories.dart'
    as _i104;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i320.LocationService>(() => _i320.LocationService());
    gh.factory<_i940.ShareServices>(() => _i940.ShareServices());
    gh.factory<_i323.AppFileService>(() => _i323.AppFileService());
    gh.factory<_i577.PermissionServices>(() => _i577.PermissionServices());
    gh.factory<_i840.GetWorkTypesUseCase>(() => _i840.GetWorkTypesUseCase());
    gh.singleton<_i934.LoadingHelper>(() => _i934.LoadingHelper());
    gh.lazySingleton<_i407.NetworkInfoImpl>(() => _i407.NetworkInfoImpl());
    gh.lazySingleton<_i466.DioOptions>(() => _i466.DioOptions());
    gh.lazySingleton<_i974.HandleErrors>(() => _i974.HandleErrors());
    gh.lazySingleton<_i45.HandleRequestBody>(() => _i45.HandleRequestBody());
    gh.lazySingleton<_i893.HandleJsonResponse<dynamic>>(
        () => _i893.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i627.DioHeader>(() => _i627.DioHeader());
    gh.lazySingleton<_i1065.Patch>(() => _i1065.Patch());
    gh.lazySingleton<_i20.Post>(() => _i20.Post());
    gh.lazySingleton<_i146.Delete>(() => _i146.Delete());
    gh.lazySingleton<_i687.Get>(() => _i687.Get());
    gh.lazySingleton<_i106.Put>(() => _i106.Put());
    gh.lazySingleton<_i798.GenericHttpImpl<dynamic>>(
        () => _i798.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i769.GlobalContext>(() => _i769.GlobalContext());
    gh.lazySingleton<_i443.GlobalNotification>(
        () => _i443.GlobalNotification());
    gh.lazySingleton<_i297.CountryPickerHelper>(
        () => _i297.CountryPickerHelper());
    gh.lazySingleton<_i652.Utilities>(() => _i652.Utilities());
    gh.lazySingleton<_i279.FirebaseAnalyticsHelper>(
        () => _i279.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i690.UserServicesHelper>(
        () => _i690.UserServicesHelper());
    gh.lazySingleton<_i177.DeviceIdHelper>(() => _i177.DeviceIdHelper());
    gh.factory<_i104.SubscriptionRepositories>(
        () => _i96.ImplSubscriptionRepositories());
    gh.factory<_i674.AuthRepositories>(() => _i988.ImplAuthRepositories());
    gh.factory<_i201.SubscriptionDataSource>(
        () => _i267.ImplSubscriptionDataSource());
    gh.factory<_i973.HomeDataSource>(() => _i409.ImplHomeDataSource());
    gh.factory<_i141.HomeRepositories>(() => _i200.ImplHomeRepositories());
    gh.factory<_i662.AuthDataSource>(() => _i23.ImplAuthDataSource());
    return this;
  }
}
