import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:structure_core/core/common/custom_toast.dart';
import 'package:structure_core/core/common/resource.dart';

class DoubleTapBackExitApp extends StatefulWidget {
  const DoubleTapBackExitApp({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 2500),
  }) : super(key: key);

  final Widget child;
  final Duration duration;

  @override
  _DoubleTapBackExitAppState createState() => _DoubleTapBackExitAppState();
}

class _DoubleTapBackExitAppState extends State<DoubleTapBackExitApp> {
  DateTime _lastTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _isExit,
      child: widget.child,
    );
  }

  Future<bool> _isExit() async {
    if (DateTime.now().difference(_lastTime) > widget.duration) {
      _lastTime = DateTime.now();
      CustomToast.showSimpleToast(msg: Translate.s.press_twice_to_exit);
      return Future.value(false);
    }
    await SystemNavigator.pop();
    return Future.value(true);
  }
}
