// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:ndf/core/lib/blob_attachment/presentation/blob_attachment_imports.dart'
    as _i1;
import 'package:ndf/feature/auth/presentation/pages/forget_password/presentation/forget_password_imports.dart'
    as _i2;
import 'package:ndf/feature/auth/presentation/pages/login/login_imports.dart'
    as _i3;
import 'package:ndf/feature/auth/presentation/pages/reset_password/presentation/reset_password_imports.dart'
    as _i4;
import 'package:ndf/feature/auth/presentation/pages/sign_up/presentation/sign_up_imports.dart'
    as _i5;
import 'package:ndf/feature/auth/presentation/pages/splash/splash_imports.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    RouteAttachment.name: (routeData) {
      final args = routeData.argsAs<RouteAttachmentArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BlobAttachmentScreen(
          key: args.key,
          attachmentId: args.attachmentId,
          hasBorder: args.hasBorder,
          needShimmer: args.needShimmer,
          isOrgLogo: args.isOrgLogo,
          borderRadius: args.borderRadius,
          height: args.height,
          width: args.width,
          onTap: args.onTap,
          boxShape: args.boxShape,
          canOpen: args.canOpen,
        ),
      );
    },
    ForgetPasswordScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ForgetPasswordScreenRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ForgetPasswordScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.PdfSignatureScreen(),
      );
    },
    ResetPasswordScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordScreenRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ResetPasswordScreen(
          key: args.key,
          email: args.email,
          otp: args.otp,
        ),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BlobAttachmentScreen]
class RouteAttachment extends _i7.PageRouteInfo<RouteAttachmentArgs> {
  RouteAttachment({
    _i8.Key? key,
    required dynamic attachmentId,
    bool hasBorder = false,
    bool needShimmer = false,
    bool isOrgLogo = false,
    double? borderRadius,
    double height = 90,
    double? width,
    dynamic Function()? onTap,
    _i8.BoxShape? boxShape,
    bool canOpen = true,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          RouteAttachment.name,
          args: RouteAttachmentArgs(
            key: key,
            attachmentId: attachmentId,
            hasBorder: hasBorder,
            needShimmer: needShimmer,
            isOrgLogo: isOrgLogo,
            borderRadius: borderRadius,
            height: height,
            width: width,
            onTap: onTap,
            boxShape: boxShape,
            canOpen: canOpen,
          ),
          initialChildren: children,
        );

  static const String name = 'RouteAttachment';

  static const _i7.PageInfo<RouteAttachmentArgs> page =
      _i7.PageInfo<RouteAttachmentArgs>(name);
}

class RouteAttachmentArgs {
  const RouteAttachmentArgs({
    this.key,
    required this.attachmentId,
    this.hasBorder = false,
    this.needShimmer = false,
    this.isOrgLogo = false,
    this.borderRadius,
    this.height = 90,
    this.width,
    this.onTap,
    this.boxShape,
    this.canOpen = true,
  });

  final _i8.Key? key;

  final dynamic attachmentId;

  final bool hasBorder;

  final bool needShimmer;

  final bool isOrgLogo;

  final double? borderRadius;

  final double height;

  final double? width;

  final dynamic Function()? onTap;

  final _i8.BoxShape? boxShape;

  final bool canOpen;

  @override
  String toString() {
    return 'RouteAttachmentArgs{key: $key, attachmentId: $attachmentId, hasBorder: $hasBorder, needShimmer: $needShimmer, isOrgLogo: $isOrgLogo, borderRadius: $borderRadius, height: $height, width: $width, onTap: $onTap, boxShape: $boxShape, canOpen: $canOpen}';
  }
}

/// generated route for
/// [_i2.ForgetPasswordScreen]
class ForgetPasswordScreenRoute
    extends _i7.PageRouteInfo<ForgetPasswordScreenRouteArgs> {
  ForgetPasswordScreenRoute({
    _i9.Key? key,
    required String email,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ForgetPasswordScreenRoute.name,
          args: ForgetPasswordScreenRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordScreenRoute';

  static const _i7.PageInfo<ForgetPasswordScreenRouteArgs> page =
      _i7.PageInfo<ForgetPasswordScreenRouteArgs>(name);
}

class ForgetPasswordScreenRouteArgs {
  const ForgetPasswordScreenRouteArgs({
    this.key,
    required this.email,
  });

  final _i9.Key? key;

  final String email;

  @override
  String toString() {
    return 'ForgetPasswordScreenRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i3.PdfSignatureScreen]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ResetPasswordScreen]
class ResetPasswordScreenRoute
    extends _i7.PageRouteInfo<ResetPasswordScreenRouteArgs> {
  ResetPasswordScreenRoute({
    _i9.Key? key,
    required String email,
    required String otp,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ResetPasswordScreenRoute.name,
          args: ResetPasswordScreenRouteArgs(
            key: key,
            email: email,
            otp: otp,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordScreenRoute';

  static const _i7.PageInfo<ResetPasswordScreenRouteArgs> page =
      _i7.PageInfo<ResetPasswordScreenRouteArgs>(name);
}

class ResetPasswordScreenRouteArgs {
  const ResetPasswordScreenRouteArgs({
    this.key,
    required this.email,
    required this.otp,
  });

  final _i9.Key? key;

  final String email;

  final String otp;

  @override
  String toString() {
    return 'ResetPasswordScreenRouteArgs{key: $key, email: $email, otp: $otp}';
  }
}

/// generated route for
/// [_i5.SignUpScreen]
class SignUpScreenRoute extends _i7.PageRouteInfo<void> {
  const SignUpScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SignUpScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
