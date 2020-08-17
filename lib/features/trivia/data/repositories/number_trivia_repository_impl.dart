import 'package:dartz/dartz.dart';
import 'package:fcclone/core/errors/exception.dart';
import 'package:fcclone/core/errors/failures_c.dart';
import 'package:fcclone/core/network/info/network_info.dart';
import 'package:fcclone/features/trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:fcclone/features/trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:fcclone/features/trivia/domain/entities/number_trivia.dart';
import 'package:fcclone/features/trivia/domain/repositories/number_trivia_repository.dart';
import 'package:meta/meta.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(
      int number) async {
    networkInfo.isConnected;
    try {
      final remoteTrivia =
          await remoteDataSource.getConcreteNumberTrivia(number);
      localDataSource.cacheNumberTrivia(remoteTrivia);
      return Right(remoteTrivia);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    return null;
  }
}
