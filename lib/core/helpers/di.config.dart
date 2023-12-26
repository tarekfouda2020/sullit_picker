// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/file_service.dart' as _i3;
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart' as _i9;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i12;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i13;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i19;
import 'package:flutter_tdd/core/helpers/location_service.dart' as _i20;
import 'package:flutter_tdd/core/helpers/psermission_services.dart' as _i23;
import 'package:flutter_tdd/core/helpers/share_services.dart' as _i26;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i27;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i6;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i11;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i22;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i24;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i25;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i7;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart' as _i8;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i14;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i15;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i16;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i10;
import 'package:flutter_tdd/core/network/network_info.dart' as _i21;
import 'package:flutter_tdd/features/base/data/data_sources/home_remote_data_source.dart'
    as _i17;
import 'package:flutter_tdd/features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i18;
import 'package:flutter_tdd/features/base/data/repositories/impl_base_repository.dart'
    as _i5;
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppFileService>(() => _i3.AppFileService());
    gh.factory<_i4.BaseRepository>(() => _i5.ImplBaseRepository());
    gh.lazySingleton<_i6.Delete>(() => _i6.Delete());
    gh.lazySingleton<_i7.DioHeader>(() => _i7.DioHeader());
    gh.lazySingleton<_i8.DioOptions>(() => _i8.DioOptions());
    gh.lazySingleton<_i9.FirebaseAnalyticsHelper>(
        () => _i9.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i10.GenericHttpImpl<dynamic>>(
        () => _i10.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i11.Get>(() => _i11.Get());
    gh.lazySingleton<_i12.GlobalContext>(() => _i12.GlobalContext());
    gh.lazySingleton<_i13.GlobalNotification>(() => _i13.GlobalNotification());
    gh.lazySingleton<_i14.HandleErrors>(() => _i14.HandleErrors());
    gh.lazySingleton<_i15.HandleJsonResponse<dynamic>>(
        () => _i15.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i16.HandleRequestBody>(() => _i16.HandleRequestBody());
    gh.factory<_i17.HomeRemoteDataSource>(
        () => _i18.ImplHomeRemoteDataSource());
    gh.singleton<_i19.LoadingHelper>(_i19.LoadingHelper());
    gh.factory<_i20.LocationService>(() => _i20.LocationService());
    gh.lazySingleton<_i21.NetworkInfoImpl>(() => _i21.NetworkInfoImpl());
    gh.lazySingleton<_i22.Patch>(() => _i22.Patch());
    gh.factory<_i23.PermissionServices>(() => _i23.PermissionServices());
    gh.lazySingleton<_i24.Post>(() => _i24.Post());
    gh.lazySingleton<_i25.Put>(() => _i25.Put());
    gh.factory<_i26.ShareServices>(() => _i26.ShareServices());
    gh.lazySingleton<_i27.Utilities>(() => _i27.Utilities());
    return this;
  }
}
