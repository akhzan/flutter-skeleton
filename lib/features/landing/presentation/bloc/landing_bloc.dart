import 'dart:async';
import 'package:bloc/bloc.dart';

part 'landing_state.dart';
part 'landing_event.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  @override
  LandingState get initialState => LandingInitial();

  @override
  Stream<LandingState> mapEventToState(
    LandingEvent event,
  ) async* {
    if (event is GetLanding) {
      yield LandingLoading();
      final landing = await _fetchingData();
      yield LandingLoaded(landing: landing);
    }
  }
}

Future<String> _fetchingData() {
  return Future.delayed(Duration(seconds: 1), () {
    return '20';
  });
}
