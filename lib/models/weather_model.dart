class WeatherModel {
  String date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherStateName;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});

  factory WeatherModel.fromJson(dynamic data) {
    var jasonData = data['forecast']['forecastday'][0];

    return WeatherModel(
      date: data['location']['localtime'],
      temp: jasonData['avgtemp_c'],
      maxTemp: jasonData['maxtemp_c'],
      minTemp: jasonData['mintemp_c'],
      weatherStateName: jasonData['condition']['text'],
    );
  }
}
