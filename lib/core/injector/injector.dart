import 'package:fcclone/core/env/env.dart';
import 'package:kiwi/kiwi.dart';

class InjectorContainer {
  InjectorContainer();
  void initDependencyInjection() {
    final KiwiContainer container = KiwiContainer();
    if (Env().isBuildDebug()) {
      container.silent = true;
    }
  }
}
