import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:structure_core/core/ui/loading_widget.dart';
import 'package:structure_core/core/ui/show_error_widget.dart';
import 'base_bloc.dart';
import 'base_state.dart';

class BaseBlocBuilder<T> extends StatelessWidget {
  final BaseBloc<T> bloc;
  final Widget Function(T data) onSuccessWidget;
  final Widget? onFailedWidget;
  final Widget? onLoadingWidget;

  const BaseBlocBuilder({
    Key? key,
    required this.bloc,
    required this.onSuccessWidget,
    this.onFailedWidget,
    this.onLoadingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseBloc<T>, BaseState<T>>(
      bloc: bloc,
      buildWhen: (previous, current) => previous != current,
      builder: (_, state) {
        return state.maybeWhen(
          orElse: () => SizedBox(width: 0,height: 0,),
          success: (data) {
            return onSuccessWidget(data!);
          },
          loading: () => onLoadingWidget ?? const LoadingWidget(),
          failure: (_, __) => onFailedWidget ?? ShowErrorWidget(state: state, actionText: "Go Home",),
        );
      },
    );
  }
}
