import 'package:fcclone/features/forecast/domain/entities/location.dart';
import 'package:kiwi/kiwi.dart';

class ForecastConfigurations {
  final KiwiContainer container;
  ForecastConfigurations({this.container});
  configure() {
    container.registerInstance(Location(latitude: 0, longitude: 0));
    container.registerInstance(
      Location(latitude: 51.5073, longitude: -0.1277),
      name: 'London',
    );
  }
}
