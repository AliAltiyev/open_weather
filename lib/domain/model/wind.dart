import 'package:open_weather/export.dart';

class Wind extends Equatable {
  final double? speed;
  final int? deg;
  final double? gust;

  const Wind({
    this.speed,
    this.deg,
    this.gust,
  });

  Wind copyWith({
    double? speed,
    int? deg,
    double? gust,
  }) =>
      Wind(
        speed: speed ?? this.speed,
        deg: deg ?? this.deg,
        gust: gust ?? this.gust,
      );

  @override
  List<Object?> get props => [
        speed,
        deg,
        gust,
      ];
}
