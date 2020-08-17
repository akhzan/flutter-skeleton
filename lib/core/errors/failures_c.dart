import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [message];

  final String message;

  Failure({@required this.message});
}

class ServerFailure extends Failure {
  ServerFailure() : super(message: "Server Failure");
}

class CacheFailure extends Failure {
  CacheFailure() : super(message: "Cache Failure");
}

class NativePlatformFailure extends Failure {
  NativePlatformFailure() : super(message: "Native Platform Failure");
}

class NetworkOfflineFailure extends Failure {
  NetworkOfflineFailure() : super(message: "Tidak ada Jaringan Internet");
}

class RefreshAccessTokenFailure extends Failure {
  RefreshAccessTokenFailure() : super(message: "Refresh Access Token Failure");
}

class OtherFailure extends Failure {
  OtherFailure() : super(message: "Other Failure");
}
