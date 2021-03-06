import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [properties];

  final List properties;

  Failure({this.properties});
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
