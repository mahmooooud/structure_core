import 'package:flutter/material.dart';

class InitCore {
    late BuildContext context;

  static final InitCore _inst = InitCore._internal(BuildContext as BuildContext);

  InitCore._internal(BuildContext appContext){
    context = appContext;
  }

  factory InitCore() {
    return _inst;
  }
}