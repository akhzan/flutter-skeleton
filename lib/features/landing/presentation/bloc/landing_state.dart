part of 'landing_bloc.dart';

abstract class LandingState {}

class LandingInitial extends LandingState {}

class LandingLoading extends LandingState {}

class LandingLoaded extends LandingState {
  final String landing;

  LandingLoaded({this.landing});
}
