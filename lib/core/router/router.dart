import 'package:fcclone/features/forecast/presentation/forecast_widget.dart';
import 'package:fcclone/features/landing/presentation/screens/landing.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routers {
  Router router = new Router();
  static const String INITIAL_ROUTE = WeatherForecastWidget.PATH;

  void setupRouter() {
    router.define(Landing.PATH, handler: _customHandler(Landing()));
    router.define(WeatherForecastWidget.PATH,
        handler: _customHandler(WeatherForecastWidget()));
  }

  static Handler _customHandler(widget) => Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          widget);
}
