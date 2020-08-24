import 'package:fcclone/core/bloc/bloc_container.dart';
import 'package:fcclone/core/router/router.dart';
import 'package:fcclone/features/forecast/presentation/forecast_widget.dart';
import 'package:flutter/material.dart';

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
