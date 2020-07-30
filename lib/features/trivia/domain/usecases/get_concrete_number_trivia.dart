import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:fcclone/core/base/usecase/usecase.dart';
import 'package:fcclone/core/errors/failures.dart';
import 'package:fcclone/features/trivia/domain/entities/number_trivia.dart';
import 'package:fcclone/features/trivia/domain/repositories/number_trivia_repository.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async =>
      await repository.getConcreteNumberTrivia(params.number);
}

class Params extends Equatable {
  @override
  List<Object> get props => [number];

  final int number;

  Params({@required this.number});
}
