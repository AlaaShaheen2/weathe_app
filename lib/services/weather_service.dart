import 'dart:convert';

import 'package:http/http.dart' as http;

class weatherService {
  void getweather({required String cityName}) async {
    Uri url = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=e74da1a21dee4da7b1070043231405&q=London&aqi=no');
    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);
  }
}
