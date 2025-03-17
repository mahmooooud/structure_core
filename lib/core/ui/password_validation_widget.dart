import 'package:ndf/core/ui/password_validation_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/common/resource.dart';

class PasswordValidationWidget extends StatelessWidget {
  final dynamic controller;
  const PasswordValidationWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 5),
      child: Column(
        children: [
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.characterLengthBloc,
            builder: (context, state) {
              return PasswordValidationRow(
                isValid: state.data,
                validationRole: Translate.s.character_length,
              );
            },
          ),
          Gaps.vGap8,
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.hasNumberBloc,
            builder: (context, state) {
              return PasswordValidationRow(
                isValid: state.data,
                validationRole: Translate.s.at_least_number,
              );
            },
          ),
          Gaps.vGap8,
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.hasUppercaseBloc,
            builder: (context, state) {
              return PasswordValidationRow(
                isValid: state.data,
                validationRole: Translate.s.at_least_uppercase,
              );
            },
          ),
          Gaps.vGap8,
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.hasLowercaseBloc,
            builder: (context, state) {
              return PasswordValidationRow(
                isValid: state.data,
                validationRole: Translate.s.at_least_lowercase,
              );
            },
          ),
          Gaps.vGap8,
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.hasSpecialCharacterBloc,
            builder: (context, state) {
              return PasswordValidationRow(
                isValid: state.data,
                validationRole: Translate.s.at_least_special,
              );
            },
          ),
        ],
      ),
    );
  }
}
