import 'package:dartz/dartz.dart';
import 'package:fcclone/core/base/usecase/usecase.dart';
import 'package:fcclone/core/errors/failures.dart';
import 'package:fcclone/features/trivia/domain/entities/number_trivia.dart';
import 'package:fcclone/features/trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async =>
      await repository.getRandomNumberTrivia();
}
