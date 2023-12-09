import 'package:open_weather/export.dart';

class Sys extends Equatable {
  final String? country;
  final int? sunrise;
  final int? sunset;

  const Sys({
    this.country,
    this.sunrise,
    this.sunset,
  });

  Sys copyWith({
    String? country,
    int? sunrise,
    int? sunset,
  }) =>
      Sys(
        country: country ?? this.country,
        sunrise: sunrise ?? this.sunrise,
        sunset: sunset ?? this.sunset,
      );

  @override
  List<Object?> get props => [
        country,
        sunrise,
        sunset,
      ];
}
