import 'package:fcclone/features/forecast/data/datasources/forecast_data_source.dart';
import 'package:fcclone/features/forecast/data/repositories/forecast_repository_impl.dart';
import 'package:fcclone/features/forecast/domain/entities/location.dart';
import 'package:fcclone/features/forecast/domain/repositories/forecast_repository.dart';
import 'package:fcclone/features/forecast/domain/usecases/get_forecast.dart';
import 'package:fcclone/features/forecast/presentation/forecast_changenotifier.dart';
import 'package:kiwi/kiwi.dart';

part 'injector.g.dart';

abstract class Injector {
  static KiwiContainer container;

  static void setup() {
    container = KiwiContainer();
    var injector = _$Injector();
    injector._configure();
  }

  static final resolve = container.resolve;

  void _configure() {
    _configureWeatherForecastFeatureModuleModule();
  }

  void _configureWeatherForecastFeatureModuleModule() {
    _configureWeatherForecastFeatureModuleInstances();
    _configureWeatherForecastFeatureModuleFactories();
  }

  void _configureWeatherForecastFeatureModuleInstances() {
    container.registerInstance(Location(latitude: 0, longitude: 0));
    container.registerInstance(
      Location(latitude: 51.5073, longitude: -0.1277),
      name: 'London',
    );
  }

  @Register.factory(WeatherForecastChangeNotifier)
  @Register.factory(GetForecast, resolvers: {Location: 'London'})
  @Register.factory(ForecastRepository, from: ForecastRepositoryImpl)
  @Register.factory(ForecastDataSource, from: FakeForecastDataSource)
  void _configureWeatherForecastFeatureModuleFactories();
}
