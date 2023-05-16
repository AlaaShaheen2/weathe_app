import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weathe_app/models/weather_model.dart';

class weatherService {
  Future<WeatherModel> getweather({required String cityName}) async {
    String baseUrl = 'http://api.weatherapi.com/v1';
    String apiKey = 'e74da1a21dee4da7b1070043231405';
    Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);
    

    WeatherModel weather = WeatherModel.fromJson(data);
    return weather;
  }
}
