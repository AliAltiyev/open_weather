import 'package:open_weather/export.dart';

class Coord extends Equatable {
  final double? lon;
  final double? lat;

  const Coord({
    this.lon,
    this.lat,
  });

  Coord copyWith({
    double? lon,
    double? lat,
  }) =>
      Coord(
        lon: lon ?? this.lon,
        lat: lat ?? this.lat,
      );

  @override
  List<Object?> get props => [
        lon,
        lat,
      ];
}
