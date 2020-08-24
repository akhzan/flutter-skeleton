import 'package:dartz/dartz.dart';
import 'package:fcclone/core/errors/failures_c.dart';
import 'package:fcclone/features/trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
