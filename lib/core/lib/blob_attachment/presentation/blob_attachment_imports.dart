import 'dart:developer';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:structure_core/core/bloc/base_bloc/base_bloc.dart';
import 'package:structure_core/core/bloc/base_bloc/base_state.dart';
import 'package:structure_core/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:structure_core/core/common/base_controller.dart';
import 'package:structure_core/core/common/custom_toast.dart';
import 'package:structure_core/core/common/resource.dart';
import 'package:structure_core/core/lib/blob_attachment/data/model/blob_file_model.dart';
import 'package:structure_core/core/lib/blob_attachment/data/model/request_attachment/attachment_data/attachment_data_model.dart';
import 'package:structure_core/core/lib/blob_attachment/domain/repositories/blob_attachment_repository.dart';
import 'package:structure_core/core/ui/shimmer/shimmer_widget.dart';
import 'package:structure_core/core/ui/svg_assets.dart';
import 'package:open_file/open_file.dart';

part 'blob_attachment_controller.dart';

part 'blob_attachment_screen.dart';
