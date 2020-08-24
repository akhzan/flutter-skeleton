import 'dart:async';

import 'package:fcclone/app/init.dart';
import 'package:fcclone/core/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:fcclone/core/env/env_example.dart';

void printError(FlutterErrorDetails details) {
  print('Flutter error caught : ' + details.exception);
}

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) => Container();
  FlutterError.onError = printError;
  Injector.setup();

  runZoned(() {
    runApp(Init(
      configENV: () => Env().setStaging(),
    ));
  });
}
