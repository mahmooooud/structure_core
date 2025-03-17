// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:ndf/core/common/firebase_analytics_helper.dart' as _i450;
import 'package:ndf/core/common/loading_helper.dart' as _i931;
import 'package:ndf/core/datasource/isp_helper.dart' as _i1021;
import 'package:ndf/core/datasource/sp_helper.dart' as _i299;
import 'package:ndf/core/di/injection_module.dart' as _i81;
import 'package:ndf/core/lib/blob_attachment/data/data_sources/blob_attachment_datasource.dart'
    as _i1061;
import 'package:ndf/core/lib/blob_attachment/data/data_sources/blob_attachment_datasource_impl.dart'
    as _i788;
import 'package:ndf/core/lib/blob_attachment/data/repositories/blob_attachment_repository_impl.dart'
    as _i608;
import 'package:ndf/core/lib/blob_attachment/domain/repositories/blob_attachment_repository.dart'
    as _i733;
import 'package:ndf/core/lib/lookups/data/data_sources/lookups_datasource.dart'
    as _i129;
import 'package:ndf/core/lib/lookups/data/data_sources/lookups_datasource_impl.dart'
    as _i234;
import 'package:ndf/core/lib/lookups/data/repositories/lookups_repository_impl.dart'
    as _i337;
import 'package:ndf/core/lib/lookups/domain/repositories/lookups_repository.dart'
    as _i467;
import 'package:ndf/core/navigation/base_route.dart' as _i530;
import 'package:ndf/core/net/cache/dio_cache_options.dart' as _i782;
import 'package:ndf/core/net/http_client.dart' as _i962;
import 'package:ndf/core/net/network_info.dart' as _i828;
import 'package:ndf/core/notification/global_notification.dart' as _i696;
import 'package:ndf/core/services/file_service.dart' as _i345;
import 'package:ndf/core/services/psermission_services.dart' as _i311;
import 'package:ndf/core/services/share_services.dart' as _i197;
import 'package:ndf/core/services/utilities.dart' as _i187;
import 'package:ndf/feature/attachment/datasource/blob_remote.dart' as _i465;
import 'package:ndf/feature/attachment/datasource/iblob_remote.dart' as _i1060;
import 'package:ndf/feature/attachment/repository/blob_repository.dart'
    as _i818;
import 'package:ndf/feature/attachment/repository/iblob_repository.dart'
    as _i195;
import 'package:ndf/feature/auth/data/data_sources/auth_datasource.dart'
    as _i541;
import 'package:ndf/feature/auth/data/data_sources/auth_datasource_impl.dart'
    as _i87;
import 'package:ndf/feature/auth/data/repositories/auth_repository_impl.dart'
    as _i65;
import 'package:ndf/feature/auth/domain/repositories/auth_repository.dart'
    as _i88;
import 'package:ndf/feature/auth/presentation/pages/forget_password/data/data_sources/forget_password_datasource.dart'
    as _i614;
import 'package:ndf/feature/auth/presentation/pages/forget_password/data/data_sources/forget_password_datasource_impl.dart'
    as _i127;
import 'package:ndf/feature/auth/presentation/pages/forget_password/data/repositories/forget_password_repository_impl.dart'
    as _i35;
import 'package:ndf/feature/auth/presentation/pages/forget_password/domain/forget_password_repository.dart'
    as _i216;
import 'package:ndf/feature/auth/presentation/pages/reset_password/data/data_sources/reset_password_datasource.dart'
    as _i1057;
import 'package:ndf/feature/auth/presentation/pages/reset_password/data/data_sources/reset_password_datasource_impl.dart'
    as _i794;
import 'package:ndf/feature/auth/presentation/pages/reset_password/data/repositories/reset_password_repository_impl.dart'
    as _i917;
import 'package:ndf/feature/auth/presentation/pages/reset_password/domain/reset_password_repository.dart'
    as _i979;
import 'package:ndf/feature/auth/presentation/pages/sign_up/data/data_sources/sign_up_datasource.dart'
    as _i942;
import 'package:ndf/feature/auth/presentation/pages/sign_up/data/data_sources/sign_up_datasource_impl.dart'
    as _i154;
import 'package:ndf/feature/auth/presentation/pages/sign_up/data/repositories/sign_up_repository_impl.dart'
    as _i189;
import 'package:ndf/feature/auth/presentation/pages/sign_up/domain/sign_up_repository.dart'
    as _i819;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.factory<_i345.FileService>(() => _i345.FileService());
    gh.factory<_i311.PermissionServices>(() => _i311.PermissionServices());
    gh.factory<_i197.ShareServices>(() => _i197.ShareServices());
    gh.factory<_i187.Utilities>(() => _i187.Utilities());
    gh.singleton<_i962.HttpClient>(() => injectionModule.httpClient);
    gh.singleton<_i530.AppRouter>(() => injectionModule.appRouter);
    gh.lazySingleton<_i450.FirebaseAnalyticsHelper>(
        () => _i450.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i931.LoadingHelper>(() => _i931.LoadingHelper());
    gh.lazySingleton<_i974.Logger>(() => injectionModule.logger);
    gh.lazySingleton<_i782.DioCacheOptions>(() => _i782.DioCacheOptions());
    gh.lazySingleton<_i828.NetworkInfoImpl>(() => _i828.NetworkInfoImpl());
    gh.lazySingleton<_i696.GlobalNotification>(
        () => _i696.GlobalNotification());
    gh.factory<_i942.SignUpDataSource>(() => _i154.SignUpDataSourceImpl());
    gh.factory<_i129.LookupsDatasource>(() => _i234.LookupsDatasourceImpl());
    gh.factory<_i88.AuthRepository>(() => _i65.AuthRepositoryImpl());
    gh.factory<_i819.SignUpRepository>(() => _i189.SignUpRepositoryImpl());
    gh.factory<_i733.BlobAttachmentRepository>(
        () => _i608.BlobAttachmentRepositoryImpl());
    gh.factory<_i614.ForgetPasswordDataSource>(
        () => _i127.ForgetPasswordDataSourceImpl());
    gh.factory<_i216.ForgetPasswordRepository>(
        () => _i35.ForgetPasswordRepositoryImpl());
    gh.factory<_i541.AuthDatasource>(() => _i87.AuthDatasourceImpl());
    gh.factory<_i979.ResetPasswordRepository>(
        () => _i917.ResetPasswordRepositoryImpl());
    gh.factory<_i467.LookupsRepository>(() => _i337.LookupsRepositoryImpl());
    gh.factory<_i1057.ResetPasswordDataSource>(
        () => _i794.ResetPasswordDataSourceImpl());
    gh.factory<_i1061.BlobAttachmentDatasource>(
        () => _i788.BlobAttachmentDatasourceImpl());
    gh.factory<_i1060.IBlobRemoteSource>(() => _i465.MultipartRemoteSource());
    gh.factory<_i1021.ISpHelper>(() => _i299.SPHelper());
    gh.factory<_i195.IBlobRepository>(
        () => _i818.BlobRepository(gh<_i1060.IBlobRemoteSource>()));
    return this;
  }
}

class _$InjectionModule extends _i81.InjectionModule {}
