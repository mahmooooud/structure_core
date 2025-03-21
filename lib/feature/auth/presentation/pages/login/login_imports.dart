import 'dart:developer';

import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/core/common/base_controller.dart';
import 'package:ndf/core/common/custom_toast.dart';
import 'package:ndf/core/common/extension/validator.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/datasource/isp_helper.dart';
import 'package:ndf/core/navigation/base_route.dart';
import 'package:ndf/core/navigation/base_route.gr.dart';
import 'package:ndf/core/notification/global_notification.dart';
import 'package:ndf/core/services/local_auth_service.dart';
import 'package:ndf/core/ui/change_lang_dialog.dart';
import 'package:ndf/core/ui/custom_button.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/custom_text_form_field.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/core/utils/enum.dart';
import 'package:ndf/feature/auth/data/models/user_model/login_request_model.dart';
import 'package:ndf/feature/auth/data/models/user_model/user_model.dart';
import 'package:ndf/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ndf/res.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:get_it/get_it.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:signature/signature.dart';
// import 'package:pdfx/pdfx.dart' as pdfx;
import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as path; // Import the path package
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/ui/custom_bottom_sheet.dart';
import '../../../../../core/ui/dialog_title_row.dart';
part 'widgets/forget_password_dialog.dart';
part 'widgets/enable_bio.dart';
part 'login_controller.dart';
part 'login_screen.dart';
