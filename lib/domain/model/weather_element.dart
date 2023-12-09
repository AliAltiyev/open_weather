import 'package:open_weather/export.dart';

class WeatherElement extends Equatable {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  const WeatherElement({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  WeatherElement copyWith({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) =>
      WeatherElement(
        id: id ?? this.id,
        main: main ?? this.main,
        description: description ?? this.description,
        icon: icon ?? this.icon,
      );

  @override
  List<Object?> get props => [
        id,
        main,
        description,
        icon,
      ];
}
