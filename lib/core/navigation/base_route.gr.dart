// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:camera/camera.dart' as _i33;
import 'package:flutter/cupertino.dart' as _i28;
import 'package:flutter/material.dart' as _i32;
import 'package:structure_core/core/lib/blob_attachment/presentation/blob_attachment_imports.dart'
    as _i2;
import 'package:structure_core/core/utils/enum.dart' as _i29;
import 'package:structure_core/feature/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i10;
import 'package:structure_core/feature/auth/presentation/pages/login/login_imports.dart'
    as _i12;
import 'package:structure_core/feature/auth/presentation/pages/organization_code/organization_code_imports.dart'
    as _i15;
import 'package:structure_core/feature/auth/presentation/pages/splash/splash_imports.dart'
    as _i20;
import 'package:structure_core/feature/auth/presentation/pages/verification_code/verification_code_imports.dart'
    as _i25;
import 'package:structure_core/feature/calender/data/model/daily_report/daily_report_data/daily_report_data_model.dart'
    as _i30;
import 'package:structure_core/feature/calender/presentation/calender_imports.dart'
    as _i3;
import 'package:structure_core/feature/calender/presentation/day_details/day_details_imports.dart'
    as _i5;
import 'package:structure_core/feature/face_validation/presentation/pages/face_validation_confirm/face_validation_confirm_import.dart'
    as _i8;
import 'package:structure_core/feature/face_validation/presentation/pages/take_picture/take_picture_import.dart'
    as _i22;
import 'package:structure_core/feature/home/presentation/pages/home_screen/home_screen_imports.dart'
    as _i11;
import 'package:structure_core/feature/home/presentation/pages/main_home/main_home_imports.dart'
    as _i13;
import 'package:structure_core/feature/notifications/presentation/notifications_imports.dart'
    as _i14;
import 'package:structure_core/feature/profile/data/models/user/user_model/user_model.dart'
    as _i34;
import 'package:structure_core/feature/profile/presentation/pages/change_password/change_password_imports.dart'
    as _i4;
import 'package:structure_core/feature/profile/presentation/pages/profile_details/profile_details_imports.dart'
    as _i16;
import 'package:structure_core/feature/profile/presentation/pages/user_profile/user_profile_imports.dart'
    as _i23;
import 'package:structure_core/feature/requests/data/models/request_details/request_details_data/request_details_data_model.dart'
    as _i31;
import 'package:structure_core/feature/requests/presentation/pages/attendance_verification_details/attendance_verification_details_imports.dart'
    as _i1;
import 'package:structure_core/feature/requests/presentation/pages/request_details/request_details_imports.dart'
    as _i17;
import 'package:structure_core/feature/requests/presentation/pages/statement_details/statement_details_imports.dart'
    as _i21;
import 'package:structure_core/feature/requests/presentation/pages/verification_requests_list/verification_requests_list_imports.dart'
    as _i18;
import 'package:structure_core/feature/service/presentation/pages/service_screen/screens/excuse_screen/excuse_imports.dart'
    as _i6;
import 'package:structure_core/feature/service/presentation/pages/service_screen/screens/extra_service_screen/extra_service_imports.dart'
    as _i7;
import 'package:structure_core/feature/service/presentation/pages/service_screen/screens/finger_print/finger_print_imports.dart'
    as _i9;
import 'package:structure_core/feature/service/presentation/pages/service_screen/screens/vacation_screen/vacation_imports.dart'
    as _i24;
import 'package:structure_core/feature/service/presentation/pages/service_screen/screens/verification_request_screen/verification_request_imports.dart'
    as _i26;
import 'package:structure_core/feature/service/presentation/pages/service_screen/service_imports.dart'
    as _i19;

abstract class $AppRouter extends _i27.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    AttendanceVerificationDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AttendanceVerificationDetailsRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AttendanceVerificationDetails(
          key: args.key,
          getOneUrl: args.getOneUrl,
          uniqueId: args.uniqueId,
          requestName: args.requestName,
          pageActions: args.pageActions,
          isAdmin: args.isAdmin,
        ),
      );
    },
    Route.name: (routeData) {
      final args = routeData.argsAs<RouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BlobAttachmentScreen(
          key: args.key,
          attachmentId: args.attachmentId,
          hasBorder: args.hasBorder,
          needShimmer: args.needShimmer,
          borderRadius: args.borderRadius,
          height: args.height,
          width: args.width,
          onTap: args.onTap,
        ),
      );
    },
    CalenderRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CalenderScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChangePasswordScreen(),
      );
    },
    DayDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DayDetailsRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DayDetailsScreen(
          key: args.key,
          selectedDate: args.selectedDate,
          dailyReportEnum: args.dailyReportEnum,
          dailyReportDataModel: args.dailyReportDataModel,
        ),
      );
    },
    ExcuseRoute.name: (routeData) {
      final args = routeData.argsAs<ExcuseRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ExcuseScreen(
          key: args.key,
          isAdmin: args.isAdmin,
          isEdit: args.isEdit,
          requestDetailsModel: args.requestDetailsModel,
        ),
      );
    },
    ExtraServiceRoute.name: (routeData) {
      final args = routeData.argsAs<ExtraServiceRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ExtraServiceScreen(
          key: args.key,
          isAdmin: args.isAdmin,
          isEdit: args.isEdit,
          requestDetailsModel: args.requestDetailsModel,
        ),
      );
    },
    FaceValidationConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<FaceValidationConfirmRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.FaceValidationConfirmView(
          key: args.key,
          camera: args.camera,
          attendanceType: args.attendanceType,
          attendanceName: args.attendanceName,
          requestId: args.requestId,
        ),
      );
    },
    FingerPrintRoute.name: (routeData) {
      final args = routeData.argsAs<FingerPrintRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.FingerPrintScreen(
          key: args.key,
          isAdmin: args.isAdmin,
          isEdit: args.isEdit,
          requestDetailsModel: args.requestDetailsModel,
        ),
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ForgetPasswordScreen(),
      );
    },
    ForgetPasswordSuccessRoute.name: (routeData) {
      final args = routeData.argsAs<ForgetPasswordSuccessRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ForgetPasswordSuccessScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.LoginScreen(
          key: args.key,
          hasBack: args.hasBack,
        ),
      );
    },
    MainHomeRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.MainHomeCodeScreen(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.NotificationsScreen(),
      );
    },
    OrganizationCodeRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.OrganizationCodeScreen(),
      );
    },
    ProfileDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileDetailsRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.ProfileDetailsScreen(
          key: args.key,
          userModel: args.userModel,
        ),
      );
    },
    RequestDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RequestDetailsRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.RequestDetailsScreen(
          key: args.key,
          getOneUrl: args.getOneUrl,
          uniqueId: args.uniqueId,
          requestName: args.requestName,
          pageActions: args.pageActions,
          isAdmin: args.isAdmin,
          canEdit: args.canEdit,
        ),
      );
    },
    RequestsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.VerificationRequestsListScreen(),
      );
    },
    ServiceRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ServiceScreen(
          key: args.key,
          serviceTypeEnum: args.serviceTypeEnum,
          isAdmin: args.isAdmin,
          isEdit: args.isEdit,
          requestDetailsModel: args.requestDetailsModel,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.SplashScreen(),
      );
    },
    StatementDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<StatementDetailsRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.StatementRequest(
          key: args.key,
          getOneUrl: args.getOneUrl,
          uniqueId: args.uniqueId,
          requestName: args.requestName,
          pageActions: args.pageActions,
          isAdmin: args.isAdmin,
        ),
      );
    },
    TakePictureRoute.name: (routeData) {
      final args = routeData.argsAs<TakePictureRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.TakePictureView(
          key: args.key,
          camera: args.camera,
          attendanceType: args.attendanceType,
          isUpdateImage: args.isUpdateImage,
          requestId: args.requestId,
          attendanceName: args.attendanceName,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.UserProfileScreen(),
      );
    },
    VacationRoute.name: (routeData) {
      final args = routeData.argsAs<VacationRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.VacationScreen(
          key: args.key,
          isAdmin: args.isAdmin,
          isEdit: args.isEdit,
          requestDetailsModel: args.requestDetailsModel,
        ),
      );
    },
    VerificationCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationCodeRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.VerificationCodeScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
    VerificationRequestRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationRequestRouteArgs>();
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.VerificationRequestScreen(
          key: args.key,
          isAdmin: args.isAdmin,
          isEdit: args.isEdit,
          requestDetailsModel: args.requestDetailsModel,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AttendanceVerificationDetails]
class AttendanceVerificationDetailsRoute
    extends _i27.PageRouteInfo<AttendanceVerificationDetailsRouteArgs> {
  AttendanceVerificationDetailsRoute({
    _i28.Key? key,
    required String getOneUrl,
    required String uniqueId,
    required String requestName,
    List<String>? pageActions,
    bool isAdmin = false,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          AttendanceVerificationDetailsRoute.name,
          args: AttendanceVerificationDetailsRouteArgs(
            key: key,
            getOneUrl: getOneUrl,
            uniqueId: uniqueId,
            requestName: requestName,
            pageActions: pageActions,
            isAdmin: isAdmin,
          ),
          initialChildren: children,
        );

  static const String name = 'AttendanceVerificationDetailsRoute';

  static const _i27.PageInfo<AttendanceVerificationDetailsRouteArgs> page =
      _i27.PageInfo<AttendanceVerificationDetailsRouteArgs>(name);
}

class AttendanceVerificationDetailsRouteArgs {
  const AttendanceVerificationDetailsRouteArgs({
    this.key,
    required this.getOneUrl,
    required this.uniqueId,
    required this.requestName,
    this.pageActions,
    this.isAdmin = false,
  });

  final _i28.Key? key;

  final String getOneUrl;

  final String uniqueId;

  final String requestName;

  final List<String>? pageActions;

  final bool isAdmin;

  @override
  String toString() {
    return 'AttendanceVerificationDetailsRouteArgs{key: $key, getOneUrl: $getOneUrl, uniqueId: $uniqueId, requestName: $requestName, pageActions: $pageActions, isAdmin: $isAdmin}';
  }
}

/// generated route for
/// [_i2.BlobAttachmentScreen]
class Route extends _i27.PageRouteInfo<RouteArgs> {
  Route({
    _i28.Key? key,
    required int? attachmentId,
    bool hasBorder = false,
    bool needShimmer = false,
    double? borderRadius,
    double height = 90,
    double? width,
    dynamic Function()? onTap,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          Route.name,
          args: RouteArgs(
            key: key,
            attachmentId: attachmentId,
            hasBorder: hasBorder,
            needShimmer: needShimmer,
            borderRadius: borderRadius,
            height: height,
            width: width,
            onTap: onTap,
          ),
          initialChildren: children,
        );

  static const String name = 'Route';

  static const _i27.PageInfo<RouteArgs> page = _i27.PageInfo<RouteArgs>(name);
}

class RouteArgs {
  const RouteArgs({
    this.key,
    required this.attachmentId,
    this.hasBorder = false,
    this.needShimmer = false,
    this.borderRadius,
    this.height = 90,
    this.width,
    this.onTap,
  });

  final _i28.Key? key;

  final int? attachmentId;

  final bool hasBorder;

  final bool needShimmer;

  final double? borderRadius;

  final double height;

  final double? width;

  final dynamic Function()? onTap;

  @override
  String toString() {
    return 'RouteArgs{key: $key, attachmentId: $attachmentId, hasBorder: $hasBorder, needShimmer: $needShimmer, borderRadius: $borderRadius, height: $height, width: $width, onTap: $onTap}';
  }
}

/// generated route for
/// [_i3.CalenderScreen]
class CalenderRoute extends _i27.PageRouteInfo<void> {
  const CalenderRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CalenderRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalenderRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChangePasswordScreen]
class ChangePasswordRoute extends _i27.PageRouteInfo<void> {
  const ChangePasswordRoute({List<_i27.PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DayDetailsScreen]
class DayDetailsRoute extends _i27.PageRouteInfo<DayDetailsRouteArgs> {
  DayDetailsRoute({
    _i28.Key? key,
    required String selectedDate,
    required _i29.DailyReportEnum dailyReportEnum,
    required _i30.DailyReportDataModel dailyReportDataModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          DayDetailsRoute.name,
          args: DayDetailsRouteArgs(
            key: key,
            selectedDate: selectedDate,
            dailyReportEnum: dailyReportEnum,
            dailyReportDataModel: dailyReportDataModel,
          ),
          initialChildren: children,
        );

  static const String name = 'DayDetailsRoute';

  static const _i27.PageInfo<DayDetailsRouteArgs> page =
      _i27.PageInfo<DayDetailsRouteArgs>(name);
}

class DayDetailsRouteArgs {
  const DayDetailsRouteArgs({
    this.key,
    required this.selectedDate,
    required this.dailyReportEnum,
    required this.dailyReportDataModel,
  });

  final _i28.Key? key;

  final String selectedDate;

  final _i29.DailyReportEnum dailyReportEnum;

  final _i30.DailyReportDataModel dailyReportDataModel;

  @override
  String toString() {
    return 'DayDetailsRouteArgs{key: $key, selectedDate: $selectedDate, dailyReportEnum: $dailyReportEnum, dailyReportDataModel: $dailyReportDataModel}';
  }
}

/// generated route for
/// [_i6.ExcuseScreen]
class ExcuseRoute extends _i27.PageRouteInfo<ExcuseRouteArgs> {
  ExcuseRoute({
    _i28.Key? key,
    required bool isAdmin,
    bool isEdit = false,
    _i31.RequestDetailsDataModel? requestDetailsModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          ExcuseRoute.name,
          args: ExcuseRouteArgs(
            key: key,
            isAdmin: isAdmin,
            isEdit: isEdit,
            requestDetailsModel: requestDetailsModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ExcuseRoute';

  static const _i27.PageInfo<ExcuseRouteArgs> page =
      _i27.PageInfo<ExcuseRouteArgs>(name);
}

class ExcuseRouteArgs {
  const ExcuseRouteArgs({
    this.key,
    required this.isAdmin,
    this.isEdit = false,
    this.requestDetailsModel,
  });

  final _i28.Key? key;

  final bool isAdmin;

  final bool isEdit;

  final _i31.RequestDetailsDataModel? requestDetailsModel;

  @override
  String toString() {
    return 'ExcuseRouteArgs{key: $key, isAdmin: $isAdmin, isEdit: $isEdit, requestDetailsModel: $requestDetailsModel}';
  }
}

/// generated route for
/// [_i7.ExtraServiceScreen]
class ExtraServiceRoute extends _i27.PageRouteInfo<ExtraServiceRouteArgs> {
  ExtraServiceRoute({
    _i28.Key? key,
    required bool isAdmin,
    bool isEdit = false,
    _i31.RequestDetailsDataModel? requestDetailsModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          ExtraServiceRoute.name,
          args: ExtraServiceRouteArgs(
            key: key,
            isAdmin: isAdmin,
            isEdit: isEdit,
            requestDetailsModel: requestDetailsModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ExtraServiceRoute';

  static const _i27.PageInfo<ExtraServiceRouteArgs> page =
      _i27.PageInfo<ExtraServiceRouteArgs>(name);
}

class ExtraServiceRouteArgs {
  const ExtraServiceRouteArgs({
    this.key,
    required this.isAdmin,
    this.isEdit = false,
    this.requestDetailsModel,
  });

  final _i28.Key? key;

  final bool isAdmin;

  final bool isEdit;

  final _i31.RequestDetailsDataModel? requestDetailsModel;

  @override
  String toString() {
    return 'ExtraServiceRouteArgs{key: $key, isAdmin: $isAdmin, isEdit: $isEdit, requestDetailsModel: $requestDetailsModel}';
  }
}

/// generated route for
/// [_i8.FaceValidationConfirmView]
class FaceValidationConfirmRoute
    extends _i27.PageRouteInfo<FaceValidationConfirmRouteArgs> {
  FaceValidationConfirmRoute({
    _i32.Key? key,
    required _i33.CameraDescription camera,
    required String attendanceType,
    String? attendanceName,
    String? requestId,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          FaceValidationConfirmRoute.name,
          args: FaceValidationConfirmRouteArgs(
            key: key,
            camera: camera,
            attendanceType: attendanceType,
            attendanceName: attendanceName,
            requestId: requestId,
          ),
          initialChildren: children,
        );

  static const String name = 'FaceValidationConfirmRoute';

  static const _i27.PageInfo<FaceValidationConfirmRouteArgs> page =
      _i27.PageInfo<FaceValidationConfirmRouteArgs>(name);
}

class FaceValidationConfirmRouteArgs {
  const FaceValidationConfirmRouteArgs({
    this.key,
    required this.camera,
    required this.attendanceType,
    this.attendanceName,
    this.requestId,
  });

  final _i32.Key? key;

  final _i33.CameraDescription camera;

  final String attendanceType;

  final String? attendanceName;

  final String? requestId;

  @override
  String toString() {
    return 'FaceValidationConfirmRouteArgs{key: $key, camera: $camera, attendanceType: $attendanceType, attendanceName: $attendanceName, requestId: $requestId}';
  }
}

/// generated route for
/// [_i9.FingerPrintScreen]
class FingerPrintRoute extends _i27.PageRouteInfo<FingerPrintRouteArgs> {
  FingerPrintRoute({
    _i28.Key? key,
    required bool isAdmin,
    bool isEdit = false,
    _i31.RequestDetailsDataModel? requestDetailsModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          FingerPrintRoute.name,
          args: FingerPrintRouteArgs(
            key: key,
            isAdmin: isAdmin,
            isEdit: isEdit,
            requestDetailsModel: requestDetailsModel,
          ),
          initialChildren: children,
        );

  static const String name = 'FingerPrintRoute';

  static const _i27.PageInfo<FingerPrintRouteArgs> page =
      _i27.PageInfo<FingerPrintRouteArgs>(name);
}

class FingerPrintRouteArgs {
  const FingerPrintRouteArgs({
    this.key,
    required this.isAdmin,
    this.isEdit = false,
    this.requestDetailsModel,
  });

  final _i28.Key? key;

  final bool isAdmin;

  final bool isEdit;

  final _i31.RequestDetailsDataModel? requestDetailsModel;

  @override
  String toString() {
    return 'FingerPrintRouteArgs{key: $key, isAdmin: $isAdmin, isEdit: $isEdit, requestDetailsModel: $requestDetailsModel}';
  }
}

/// generated route for
/// [_i10.ForgetPasswordScreen]
class ForgetPasswordRoute extends _i27.PageRouteInfo<void> {
  const ForgetPasswordRoute({List<_i27.PageRouteInfo>? children})
      : super(
          ForgetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ForgetPasswordSuccessScreen]
class ForgetPasswordSuccessRoute
    extends _i27.PageRouteInfo<ForgetPasswordSuccessRouteArgs> {
  ForgetPasswordSuccessRoute({
    _i32.Key? key,
    required String email,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          ForgetPasswordSuccessRoute.name,
          args: ForgetPasswordSuccessRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordSuccessRoute';

  static const _i27.PageInfo<ForgetPasswordSuccessRouteArgs> page =
      _i27.PageInfo<ForgetPasswordSuccessRouteArgs>(name);
}

class ForgetPasswordSuccessRouteArgs {
  const ForgetPasswordSuccessRouteArgs({
    this.key,
    required this.email,
  });

  final _i32.Key? key;

  final String email;

  @override
  String toString() {
    return 'ForgetPasswordSuccessRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i11.HomeScreen]
class HomeScreenRoute extends _i27.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i27.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i12.LoginScreen]
class LoginRoute extends _i27.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i32.Key? key,
    required bool hasBack,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            hasBack: hasBack,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i27.PageInfo<LoginRouteArgs> page =
      _i27.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.hasBack,
  });

  final _i32.Key? key;

  final bool hasBack;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, hasBack: $hasBack}';
  }
}

/// generated route for
/// [_i13.MainHomeCodeScreen]
class MainHomeRoute extends _i27.PageRouteInfo<void> {
  const MainHomeRoute({List<_i27.PageRouteInfo>? children})
      : super(
          MainHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainHomeRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i14.NotificationsScreen]
class NotificationsRoute extends _i27.PageRouteInfo<void> {
  const NotificationsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i15.OrganizationCodeScreen]
class OrganizationCodeRoute extends _i27.PageRouteInfo<void> {
  const OrganizationCodeRoute({List<_i27.PageRouteInfo>? children})
      : super(
          OrganizationCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrganizationCodeRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ProfileDetailsScreen]
class ProfileDetailsRoute extends _i27.PageRouteInfo<ProfileDetailsRouteArgs> {
  ProfileDetailsRoute({
    _i28.Key? key,
    required _i34.UserModel userModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          ProfileDetailsRoute.name,
          args: ProfileDetailsRouteArgs(
            key: key,
            userModel: userModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static const _i27.PageInfo<ProfileDetailsRouteArgs> page =
      _i27.PageInfo<ProfileDetailsRouteArgs>(name);
}

class ProfileDetailsRouteArgs {
  const ProfileDetailsRouteArgs({
    this.key,
    required this.userModel,
  });

  final _i28.Key? key;

  final _i34.UserModel userModel;

  @override
  String toString() {
    return 'ProfileDetailsRouteArgs{key: $key, userModel: $userModel}';
  }
}

/// generated route for
/// [_i17.RequestDetailsScreen]
class RequestDetailsRoute extends _i27.PageRouteInfo<RequestDetailsRouteArgs> {
  RequestDetailsRoute({
    _i28.Key? key,
    required String getOneUrl,
    required String uniqueId,
    required String requestName,
    List<String>? pageActions,
    bool isAdmin = false,
    bool canEdit = false,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          RequestDetailsRoute.name,
          args: RequestDetailsRouteArgs(
            key: key,
            getOneUrl: getOneUrl,
            uniqueId: uniqueId,
            requestName: requestName,
            pageActions: pageActions,
            isAdmin: isAdmin,
            canEdit: canEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'RequestDetailsRoute';

  static const _i27.PageInfo<RequestDetailsRouteArgs> page =
      _i27.PageInfo<RequestDetailsRouteArgs>(name);
}

class RequestDetailsRouteArgs {
  const RequestDetailsRouteArgs({
    this.key,
    required this.getOneUrl,
    required this.uniqueId,
    required this.requestName,
    this.pageActions,
    this.isAdmin = false,
    this.canEdit = false,
  });

  final _i28.Key? key;

  final String getOneUrl;

  final String uniqueId;

  final String requestName;

  final List<String>? pageActions;

  final bool isAdmin;

  final bool canEdit;

  @override
  String toString() {
    return 'RequestDetailsRouteArgs{key: $key, getOneUrl: $getOneUrl, uniqueId: $uniqueId, requestName: $requestName, pageActions: $pageActions, isAdmin: $isAdmin, canEdit: $canEdit}';
  }
}

/// generated route for
/// [_i18.VerificationRequestsListScreen]
class RequestsRoute extends _i27.PageRouteInfo<void> {
  const RequestsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          RequestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RequestsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ServiceScreen]
class ServiceRoute extends _i27.PageRouteInfo<ServiceRouteArgs> {
  ServiceRoute({
    _i28.Key? key,
    required _i29.ServiceTypeEnum serviceTypeEnum,
    bool isAdmin = false,
    bool isEdit = false,
    _i31.RequestDetailsDataModel? requestDetailsModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          ServiceRoute.name,
          args: ServiceRouteArgs(
            key: key,
            serviceTypeEnum: serviceTypeEnum,
            isAdmin: isAdmin,
            isEdit: isEdit,
            requestDetailsModel: requestDetailsModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceRoute';

  static const _i27.PageInfo<ServiceRouteArgs> page =
      _i27.PageInfo<ServiceRouteArgs>(name);
}

class ServiceRouteArgs {
  const ServiceRouteArgs({
    this.key,
    required this.serviceTypeEnum,
    this.isAdmin = false,
    this.isEdit = false,
    this.requestDetailsModel,
  });

  final _i28.Key? key;

  final _i29.ServiceTypeEnum serviceTypeEnum;

  final bool isAdmin;

  final bool isEdit;

  final _i31.RequestDetailsDataModel? requestDetailsModel;

  @override
  String toString() {
    return 'ServiceRouteArgs{key: $key, serviceTypeEnum: $serviceTypeEnum, isAdmin: $isAdmin, isEdit: $isEdit, requestDetailsModel: $requestDetailsModel}';
  }
}

/// generated route for
/// [_i20.SplashScreen]
class SplashRoute extends _i27.PageRouteInfo<void> {
  const SplashRoute({List<_i27.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i21.StatementRequest]
class StatementDetailsRoute
    extends _i27.PageRouteInfo<StatementDetailsRouteArgs> {
  StatementDetailsRoute({
    _i28.Key? key,
    required String getOneUrl,
    required String uniqueId,
    required String requestName,
    List<String>? pageActions,
    bool isAdmin = false,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          StatementDetailsRoute.name,
          args: StatementDetailsRouteArgs(
            key: key,
            getOneUrl: getOneUrl,
            uniqueId: uniqueId,
            requestName: requestName,
            pageActions: pageActions,
            isAdmin: isAdmin,
          ),
          initialChildren: children,
        );

  static const String name = 'StatementDetailsRoute';

  static const _i27.PageInfo<StatementDetailsRouteArgs> page =
      _i27.PageInfo<StatementDetailsRouteArgs>(name);
}

class StatementDetailsRouteArgs {
  const StatementDetailsRouteArgs({
    this.key,
    required this.getOneUrl,
    required this.uniqueId,
    required this.requestName,
    this.pageActions,
    this.isAdmin = false,
  });

  final _i28.Key? key;

  final String getOneUrl;

  final String uniqueId;

  final String requestName;

  final List<String>? pageActions;

  final bool isAdmin;

  @override
  String toString() {
    return 'StatementDetailsRouteArgs{key: $key, getOneUrl: $getOneUrl, uniqueId: $uniqueId, requestName: $requestName, pageActions: $pageActions, isAdmin: $isAdmin}';
  }
}

/// generated route for
/// [_i22.TakePictureView]
class TakePictureRoute extends _i27.PageRouteInfo<TakePictureRouteArgs> {
  TakePictureRoute({
    _i32.Key? key,
    required _i33.CameraDescription camera,
    required String attendanceType,
    bool isUpdateImage = false,
    String? requestId,
    String? attendanceName,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          TakePictureRoute.name,
          args: TakePictureRouteArgs(
            key: key,
            camera: camera,
            attendanceType: attendanceType,
            isUpdateImage: isUpdateImage,
            requestId: requestId,
            attendanceName: attendanceName,
          ),
          initialChildren: children,
        );

  static const String name = 'TakePictureRoute';

  static const _i27.PageInfo<TakePictureRouteArgs> page =
      _i27.PageInfo<TakePictureRouteArgs>(name);
}

class TakePictureRouteArgs {
  const TakePictureRouteArgs({
    this.key,
    required this.camera,
    required this.attendanceType,
    this.isUpdateImage = false,
    this.requestId,
    this.attendanceName,
  });

  final _i32.Key? key;

  final _i33.CameraDescription camera;

  final String attendanceType;

  final bool isUpdateImage;

  final String? requestId;

  final String? attendanceName;

  @override
  String toString() {
    return 'TakePictureRouteArgs{key: $key, camera: $camera, attendanceType: $attendanceType, isUpdateImage: $isUpdateImage, requestId: $requestId, attendanceName: $attendanceName}';
  }
}

/// generated route for
/// [_i23.UserProfileScreen]
class UserProfileRoute extends _i27.PageRouteInfo<void> {
  const UserProfileRoute({List<_i27.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i24.VacationScreen]
class VacationRoute extends _i27.PageRouteInfo<VacationRouteArgs> {
  VacationRoute({
    _i28.Key? key,
    required bool isAdmin,
    bool isEdit = false,
    _i31.RequestDetailsDataModel? requestDetailsModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          VacationRoute.name,
          args: VacationRouteArgs(
            key: key,
            isAdmin: isAdmin,
            isEdit: isEdit,
            requestDetailsModel: requestDetailsModel,
          ),
          initialChildren: children,
        );

  static const String name = 'VacationRoute';

  static const _i27.PageInfo<VacationRouteArgs> page =
      _i27.PageInfo<VacationRouteArgs>(name);
}

class VacationRouteArgs {
  const VacationRouteArgs({
    this.key,
    required this.isAdmin,
    this.isEdit = false,
    this.requestDetailsModel,
  });

  final _i28.Key? key;

  final bool isAdmin;

  final bool isEdit;

  final _i31.RequestDetailsDataModel? requestDetailsModel;

  @override
  String toString() {
    return 'VacationRouteArgs{key: $key, isAdmin: $isAdmin, isEdit: $isEdit, requestDetailsModel: $requestDetailsModel}';
  }
}

/// generated route for
/// [_i25.VerificationCodeScreen]
class VerificationCodeRoute
    extends _i27.PageRouteInfo<VerificationCodeRouteArgs> {
  VerificationCodeRoute({
    _i28.Key? key,
    required String email,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          VerificationCodeRoute.name,
          args: VerificationCodeRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationCodeRoute';

  static const _i27.PageInfo<VerificationCodeRouteArgs> page =
      _i27.PageInfo<VerificationCodeRouteArgs>(name);
}

class VerificationCodeRouteArgs {
  const VerificationCodeRouteArgs({
    this.key,
    required this.email,
  });

  final _i28.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerificationCodeRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i26.VerificationRequestScreen]
class VerificationRequestRoute
    extends _i27.PageRouteInfo<VerificationRequestRouteArgs> {
  VerificationRequestRoute({
    _i28.Key? key,
    required bool isAdmin,
    bool isEdit = false,
    _i31.RequestDetailsDataModel? requestDetailsModel,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          VerificationRequestRoute.name,
          args: VerificationRequestRouteArgs(
            key: key,
            isAdmin: isAdmin,
            isEdit: isEdit,
            requestDetailsModel: requestDetailsModel,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRequestRoute';

  static const _i27.PageInfo<VerificationRequestRouteArgs> page =
      _i27.PageInfo<VerificationRequestRouteArgs>(name);
}

class VerificationRequestRouteArgs {
  const VerificationRequestRouteArgs({
    this.key,
    required this.isAdmin,
    this.isEdit = false,
    this.requestDetailsModel,
  });

  final _i28.Key? key;

  final bool isAdmin;

  final bool isEdit;

  final _i31.RequestDetailsDataModel? requestDetailsModel;

  @override
  String toString() {
    return 'VerificationRequestRouteArgs{key: $key, isAdmin: $isAdmin, isEdit: $isEdit, requestDetailsModel: $requestDetailsModel}';
  }
}
