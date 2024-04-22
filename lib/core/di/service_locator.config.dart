// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i36;
import 'package:structure_core/core/common/firebase_analytics_helper.dart' as _i22;
import 'package:structure_core/core/common/loading_helper.dart' as _i35;
import 'package:structure_core/core/datasource/isp_helper.dart' as _i33;
import 'package:structure_core/core/datasource/sp_helper.dart' as _i34;
import 'package:structure_core/core/di/injection_module.dart' as _i62;
import 'package:structure_core/core/lib/blob_attachment/data/data_sources/blob_attachment_datasource.dart'
    as _i8;
import 'package:structure_core/core/lib/blob_attachment/data/data_sources/blob_attachment_datasource_impl.dart'
    as _i9;
import 'package:structure_core/core/lib/blob_attachment/data/repositories/blob_attachment_repository_impl.dart'
    as _i11;
import 'package:structure_core/core/lib/blob_attachment/domain/repositories/blob_attachment_repository.dart'
    as _i10;
import 'package:structure_core/core/lib/lookups/data/data_sources/lookups_datasource.dart'
    as _i37;
import 'package:structure_core/core/lib/lookups/data/data_sources/lookups_datasource_impl.dart'
    as _i38;
import 'package:structure_core/core/lib/lookups/data/repositories/lookups_repository_impl.dart'
    as _i40;
import 'package:structure_core/core/lib/lookups/domain/repositories/lookups_repository.dart'
    as _i39;
import 'package:structure_core/core/navigation/base_route.dart' as _i3;
import 'package:structure_core/core/net/cache/dio_cache_options.dart' as _i16;
import 'package:structure_core/core/net/http_client.dart' as _i28;
import 'package:structure_core/core/net/network_info.dart' as _i41;
import 'pazckage:structure_core/core/notification/global_notification.dart' as _i23;
import 'package:structure_core/core/services/file_service.dart' as _i21;
import 'package:structure_core/core/services/psermission_services.dart' as _i46;
import 'package:structure_core/core/services/share_services.dart' as _i59;
import 'package:structure_core/core/services/utilities.dart' as _i61;
import 'package:structure_core/feature/attachment/datasource/blob_remote.dart' as _i30;
import 'package:structure_core/feature/attachment/datasource/iblob_remote.dart' as _i29;
import 'package:structure_core/feature/attachment/repository/blob_repository.dart'
    as _i32;
import 'package:structure_core/feature/attachment/repository/iblob_repository.dart'
    as _i31;
import 'package:structure_core/feature/auth/data/data_sources/auth_datasource.dart'
    as _i4;
import 'package:structure_core/feature/auth/data/data_sources/auth_datasource_impl.dart'
    as _i5;
import 'package:structure_core/feature/auth/data/repositories/auth_repository_impl.dart'
    as _i7;
import 'package:structure_core/feature/auth/domain/repositories/auth_repository.dart'
    as _i6;
import 'package:structure_core/feature/calender/data/data_sources/calender_datasource.dart'
    as _i12;
import 'package:structure_core/feature/calender/data/data_sources/calender_datasource_impl.dart'
    as _i13;
import 'package:structure_core/feature/calender/data/repositories/calender_repository_impl.dart'
    as _i15;
import 'package:structure_core/feature/calender/domain/repositories/calender_repository.dart'
    as _i14;
import 'package:structure_core/feature/face_validation/data/data_sources/face_validation_datasource.dart'
    as _i17;
import 'package:structure_core/feature/face_validation/data/data_sources/face_validation_datasource_impl.dart'
    as _i18;
import 'package:structure_core/feature/face_validation/data/repositories/face_validation_repository_impl.dart'
    as _i20;
import 'package:structure_core/feature/face_validation/domain/repositories/face_validation_repository.dart'
    as _i19;
import 'package:structure_core/feature/home/data/data_sources/home_datasource.dart'
    as _i24;
import 'package:structure_core/feature/home/data/data_sources/home_datasource_impl.dart'
    as _i25;
import 'package:structure_core/feature/home/data/repositories/home_repository_impl.dart'
    as _i27;
import 'package:structure_core/feature/home/domain/repositories/home_repository.dart'
    as _i26;
import 'package:structure_core/feature/notifications/data/data_sources/notifications_datasource.dart'
    as _i42;
import 'package:structure_core/feature/notifications/data/data_sources/notifications_datasource_impl.dart'
    as _i43;
import 'package:structure_core/feature/notifications/data/repositories/notifications_repository_impl.dart'
    as _i45;
import 'package:structure_core/feature/notifications/domain/repositories/notifications_repository.dart'
    as _i44;
import 'package:structure_core/feature/profile/data/data_sources/profile_datasource.dart'
    as _i47;
import 'package:structure_core/feature/profile/data/data_sources/profile_datasource_impl.dart'
    as _i48;
import 'package:structure_core/feature/profile/data/repositories/profile_repository_impl.dart'
    as _i50;
import 'package:structure_core/feature/profile/domain/repositories/profile_repository.dart'
    as _i49;
import 'package:structure_core/feature/requests/data/data_sources/requests_datasource.dart'
    as _i51;
import 'package:structure_core/feature/requests/data/data_sources/requests_datasource_impl.dart'
    as _i52;
import 'package:structure_core/feature/requests/data/repositories/requests_repository_impl.dart'
    as _i54;
import 'package:structure_core/feature/requests/domain/repositories/requests_repository.dart'
    as _i53;
import 'package:structure_core/feature/service/data/data_sources/service_datasource.dart'
    as _i55;
import 'package:structure_core/feature/service/data/data_sources/service_datasource_impl.dart'
    as _i56;
import 'package:structure_core/feature/service/data/repositories/service_repository_impl.dart'
    as _i58;
import 'package:structure_core/feature/service/domain/repositories/service_repository.dart'
    as _i57;
import 'package:shared_preferences/shared_preferences.dart' as _i60;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.singleton<_i3.AppRouter>(injectionModule.appRouter);
    gh.factory<_i4.AuthDatasource>(() => _i5.AuthDatasourceImpl());
    gh.factory<_i6.AuthRepository>(() => _i7.AuthRepositoryImpl());
    gh.factory<_i8.BlobAttachmentDatasource>(
        () => _i9.BlobAttachmentDatasourceImpl());
    gh.factory<_i10.BlobAttachmentRepository>(
        () => _i11.BlobAttachmentRepositoryImpl());
    gh.factory<_i12.CalenderDatasource>(() => _i13.CalenderDatasourceImpl());
    gh.factory<_i14.CalenderRepository>(() => _i15.CalenderRepositoryImpl());
    gh.lazySingleton<_i16.DioCacheOptions>(() => _i16.DioCacheOptions());
    gh.factory<_i17.FaceValidationDatasource>(
        () => _i18.FaceValidationDatasourceImpl());
    gh.factory<_i19.FaceValidationRepository>(
        () => _i20.FaceValidationRepositoryImpl());
    gh.factory<_i21.FileService>(() => _i21.FileService());
    gh.lazySingleton<_i22.FirebaseAnalyticsHelper>(
        () => _i22.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i23.GlobalNotification>(() => _i23.GlobalNotification());
    gh.factory<_i24.HomeDatasource>(() => _i25.HomeDatasourceImpl());
    gh.factory<_i26.HomeRepository>(() => _i27.HomeRepositoryImpl());
    gh.singleton<_i28.HttpClient>(injectionModule.httpClient);
    gh.factory<_i29.IBlobRemoteSource>(() => _i30.MultipartRemoteSource());
    gh.factory<_i31.IBlobRepository>(
        () => _i32.BlobRepository(gh<_i29.IBlobRemoteSource>()));
    gh.factory<_i33.ISpHelper>(() => _i34.SPHelper());
    gh.lazySingleton<_i35.LoadingHelper>(() => _i35.LoadingHelper());
    gh.lazySingleton<_i36.Logger>(() => injectionModule.logger);
    gh.factory<_i37.LookupsDatasource>(() => _i38.LookupsDatasourceImpl());
    gh.factory<_i39.LookupsRepository>(() => _i40.LookupsRepositoryImpl());
    gh.lazySingleton<_i41.NetworkInfoImpl>(() => _i41.NetworkInfoImpl());
    gh.factory<_i42.NotificationsDatasource>(
        () => _i43.NotificationsDatasourceImpl());
    gh.factory<_i44.NotificationsRepository>(
        () => _i45.NotificationsRepositoryImpl());
    gh.factory<_i46.PermissionServices>(() => _i46.PermissionServices());
    gh.factory<_i47.ProfileDatasource>(() => _i48.ProfileDatasourceImpl());
    gh.factory<_i49.ProfileRepository>(() => _i50.ProfileRepositoryImpl());
    gh.factory<_i51.RequestDatasource>(() => _i52.RequestsDatasourceImpl());
    gh.factory<_i53.RequestsRepository>(() => _i54.RequestsRepositoryImpl());
    gh.factory<_i55.ServiceDatasource>(() => _i56.ServiceDatasourceImpl());
    gh.factory<_i57.ServiceRepository>(() => _i58.ServiceRepositoryImpl());
    gh.factory<_i59.ShareServices>(() => _i59.ShareServices());
    await gh.factoryAsync<_i60.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.factory<_i61.Utilities>(() => _i61.Utilities());
    return this;
  }
}

class _$InjectionModule extends _i62.InjectionModule {}
