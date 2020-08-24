import 'package:dartz/dartz.dart';
import 'package:fcclone/core/base/usecase/usecase.dart';
import 'package:fcclone/features/trivia/domain/entities/number_trivia.dart';
import 'package:fcclone/features/trivia/domain/repositories/number_trivia_repository.dart';
import 'package:fcclone/features/trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  final MockNumberTriviaRepository mockNumberTriviaRepository =
      MockNumberTriviaRepository();
  final GetConcreteNumberTrivia usecase =
      GetConcreteNumberTrivia(mockNumberTriviaRepository);
  final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('should get trivia for the number from repository', () async {
    when(mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));
    final result = await usecase(NoParams());
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
