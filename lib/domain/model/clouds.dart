import 'package:open_weather/export.dart';

class Clouds extends Equatable {
  final int? all;

  const Clouds({
    this.all,
  });

  Clouds copyWith({
    int? all,
  }) =>
      Clouds(
        all: all ?? this.all,
      );

  @override
  List<Object?> get props => [
        all,
      ];
}
