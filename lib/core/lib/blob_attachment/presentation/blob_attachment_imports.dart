import 'dart:io';

import 'package:ndf/core/bloc/base_bloc/base_bloc.dart';
import 'package:ndf/core/bloc/base_bloc/base_state.dart';
import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/base_controller.dart';
import 'package:ndf/core/common/custom_toast.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/extension/widget_extension.dart';
import 'package:ndf/core/datasource/isp_helper.dart';
import 'package:ndf/core/lib/blob_attachment/data/model/blob_file_model.dart';
import 'package:ndf/core/lib/blob_attachment/data/model/request_attachment/attachment_data/attachment_data_model.dart';
import 'package:ndf/core/lib/blob_attachment/domain/repositories/blob_attachment_repository.dart';
import 'package:ndf/core/ui/shimmer/shimmer_widget.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

part 'blob_attachment_controller.dart';

part 'blob_attachment_screen.dart';
