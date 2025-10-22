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
import 'package:flutter_tdd/core/helpers/orders_helper.dart' as _i752;
import 'package:flutter_tdd/core/helpers/pick_helper.dart' as _i792;
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
import 'package:flutter_tdd/features/general/data/data_source/general_data_source.dart'
    as _i503;
import 'package:flutter_tdd/features/general/data/data_source/impl_general_data_source.dart'
    as _i69;
import 'package:flutter_tdd/features/general/data/repositories/impl_general_repositories.dart'
    as _i782;
import 'package:flutter_tdd/features/general/domain/repositories/general_repositories.dart'
    as _i1033;
import 'package:flutter_tdd/features/home/data/data_source/home_data_source.dart'
    as _i973;
import 'package:flutter_tdd/features/home/data/data_source/impl_home_data_source.dart'
    as _i409;
import 'package:flutter_tdd/features/home/data/repositories/impl_home_repositories.dart'
    as _i200;
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart'
    as _i141;
import 'package:flutter_tdd/features/notifications/data/data_source/impl_notification_data_source.dart'
    as _i603;
import 'package:flutter_tdd/features/notifications/data/data_source/notification_data_source.dart'
    as _i1071;
import 'package:flutter_tdd/features/notifications/data/repositories/impl_notification_repositories.dart'
    as _i739;
import 'package:flutter_tdd/features/notifications/domain/repositories/notification_repositories.dart'
    as _i872;
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
    gh.factory<_i323.AppFileService>(() => _i323.AppFileService());
    gh.factory<_i320.LocationService>(() => _i320.LocationService());
    gh.factory<_i577.PermissionServices>(() => _i577.PermissionServices());
    gh.factory<_i940.ShareServices>(() => _i940.ShareServices());
    gh.singleton<_i934.LoadingHelper>(() => _i934.LoadingHelper());
    gh.lazySingleton<_i297.CountryPickerHelper>(
        () => _i297.CountryPickerHelper());
    gh.lazySingleton<_i177.DeviceIdHelper>(() => _i177.DeviceIdHelper());
    gh.lazySingleton<_i279.FirebaseAnalyticsHelper>(
        () => _i279.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i769.GlobalContext>(() => _i769.GlobalContext());
    gh.lazySingleton<_i443.GlobalNotification>(
        () => _i443.GlobalNotification());
    gh.lazySingleton<_i752.OrdersHelper>(() => _i752.OrdersHelper());
    gh.lazySingleton<_i792.PickHelper>(() => _i792.PickHelper());
    gh.lazySingleton<_i690.UserServicesHelper>(
        () => _i690.UserServicesHelper());
    gh.lazySingleton<_i652.Utilities>(() => _i652.Utilities());
    gh.lazySingleton<_i146.Delete>(() => _i146.Delete());
    gh.lazySingleton<_i687.Get>(() => _i687.Get());
    gh.lazySingleton<_i1065.Patch>(() => _i1065.Patch());
    gh.lazySingleton<_i20.Post>(() => _i20.Post());
    gh.lazySingleton<_i106.Put>(() => _i106.Put());
    gh.lazySingleton<_i627.DioHeader>(() => _i627.DioHeader());
    gh.lazySingleton<_i466.DioOptions>(() => _i466.DioOptions());
    gh.lazySingleton<_i974.HandleErrors>(() => _i974.HandleErrors());
    gh.lazySingleton<_i893.HandleJsonResponse<dynamic>>(
        () => _i893.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i45.HandleRequestBody>(() => _i45.HandleRequestBody());
    gh.lazySingleton<_i798.GenericHttpImpl<dynamic>>(
        () => _i798.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i407.NetworkInfoImpl>(() => _i407.NetworkInfoImpl());
    gh.factory<_i1071.NotificationDataSource>(
        () => _i603.ImplNotificationDataSource());
    gh.factory<_i674.AuthRepositories>(() => _i988.ImplAuthRepositories());
    gh.factory<_i503.GeneralDataSource>(() => _i69.ImlGeneralDataSource());
    gh.factory<_i1033.GeneralRepositories>(
        () => _i782.ImplGeneralRepositories());
    gh.factory<_i973.HomeDataSource>(() => _i409.ImplHomeDataSource());
    gh.factory<_i141.HomeRepositories>(() => _i200.ImplHomeRepositories());
    gh.factory<_i872.NotificationRepositories>(
        () => _i739.ImplNotificationRepositories());
    gh.factory<_i662.AuthDataSource>(() => _i23.ImplAuthDataSource());
    return this;
  }
}
