import 'package:fcclone/features/trivia/domain/entities/number_trivia.dart';
import 'package:meta/meta.dart';

class NumberTriviaModel extends NumberTrivia {
  final String text;
  final int number;
  NumberTriviaModel({@required this.text, @required this.number});

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) =>
      NumberTriviaModel(
          number: (json['number'] as num).toInt(), text: json['text']);

  Map<String, dynamic> toJson() => ({
        'text': text,
        'number': number,
      });
}
