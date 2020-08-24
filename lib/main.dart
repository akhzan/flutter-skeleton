import 'dart:async';

import 'package:flutter/material.dart';

import 'app/init.dart';
import 'core/env/env_example.dart';
import 'core/injector/injector.dart';

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
