import 'package:intl/intl.dart';

class WeatherModel {
  final String lonitude;
  final String latitude;
  final String weatherstate;
  final String description;
  final String icon;
  final String temp;
  final String WindSpeed;
  final String dt;
  final String sunSetdt;
  final String sunRisedt;
  final String Humidity;
  final double Rain;
  final String cityname;
  WeatherModel(
      {required this.latitude,
      required this.cityname,
      required this.lonitude,
      required this.weatherstate,
      required this.temp,
      required this.description,
      required this.icon,
      required this.WindSpeed,
      required this.dt,
      required this.sunRisedt,
      required this.sunSetdt,
      required this.Humidity,
      required this.Rain});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    // final double = json['rain'] ?? 0;
    final temp = (double.parse(json['main']['temp'].toString()) - 273)
        .toStringAsFixed(0);
    return WeatherModel(
        latitude: json['coord']['lat'].toString(),
        lonitude: json['coord']['lon'].toString(),
        weatherstate: json['weather'][0]['main'],
        temp: temp,
        description: json['weather'][0]['description'],
        icon:
            'http://openweathermap.org/img/wn/${json['weather'][0]['icon']}@4x.png',
        WindSpeed: json['wind']['speed'].toString(),
        dt: DateFormat.EEEE().format(
          DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000, isUtc: true),
        ),
        sunRisedt: DateFormat.MMMd().format(DateTime.fromMillisecondsSinceEpoch(
            json['sys']['sunrise'],
            isUtc: true)),
        sunSetdt: DateFormat.Hms().format(
          DateTime.fromMillisecondsSinceEpoch(json['sys']['sunset'] * 1000,
              isUtc: false),
        ),
        Rain: 0,
        Humidity: json['main']['humidity'].toString(),
        cityname: json['name']);
  }
}
