import 'dart:async';

import 'package:fcclone/app/init.dart';
import 'package:fcclone/core/env/env.dart';
import 'package:flutter/material.dart';

void printError(FlutterErrorDetails details) {
  print('Flutter error caught : ' + details.exception);
}

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) => Container();
  FlutterError.onError = printError;
  runZoned(() {
    runApp(Init(
      configENV: () => Env().setStaging(),
    ));
  });
}
