import 'package:kiwi/kiwi.dart';

import '../../features/forecast/data/datasources/forecast_data_source.dart';
import '../../features/forecast/data/repositories/forecast_repository_impl.dart';
import '../../features/forecast/domain/entities/location.dart';
import '../../features/forecast/domain/repositories/forecast_repository.dart';
import '../../features/forecast/domain/usecases/get_forecast.dart';
import '../../features/forecast/presentation/forecast_changenotifier.dart';
import 'configurations/forecast_configurations.dart';

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
    ForecastConfigurations(container: container).configure();
    _configureFactories();
  }

  @Register.factory(WeatherForecastChangeNotifier)
  @Register.factory(GetForecast, resolvers: {Location: 'London'})
  @Register.factory(ForecastRepository, from: ForecastRepositoryImpl)
  @Register.factory(ForecastDataSource, from: FakeForecastDataSource)
  void _configureFactories();
}
