import 'package:flutter/material.dart';

import '../core/bloc/bloc_container.dart';
import '../core/router/router.dart';
import '../features/forecast/presentation/forecast_widget.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Routers router;
  @override
  void initState() {
    super.initState();
    router = Routers();
    router.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return BlocContainer(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: WeatherForecastWidget.PATH,
        onGenerateRoute: router.router.generator,
      ),
    );
  }
}
