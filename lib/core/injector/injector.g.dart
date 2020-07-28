// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void _configureFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory(
        (c) => WeatherForecastChangeNotifier(c<GetForecast>()));
    container.registerFactory(
        (c) => GetForecast(c<ForecastRepository>(), c<Location>('London')));
    container.registerFactory<ForecastRepository>(
        (c) => ForecastRepositoryImpl(c<ForecastDataSource>()));
    container
        .registerFactory<ForecastDataSource>((c) => FakeForecastDataSource());
  }
}
