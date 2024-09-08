import 'package:flutter/material.dart';

class InitCore {
  late BuildContext context;

  static final InitCore _inst = InitCore._internal();

  InitCore._internal();

  factory InitCore() {
    return _inst;
  }

  initContext(BuildContext context){
    this.context = context;
  }
}