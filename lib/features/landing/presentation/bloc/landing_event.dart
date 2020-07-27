part of 'landing_bloc.dart';

abstract class LandingEvent {}

class GetLanding extends LandingEvent {
  final String go;
  GetLanding({this.go});
}
