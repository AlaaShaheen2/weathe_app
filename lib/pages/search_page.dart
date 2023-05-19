import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathe_app/models/weather_model.dart';
import 'package:weathe_app/services/weather_service.dart';

class SearchPage extends StatelessWidget {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (data) async {
              cityName = data;
              weatherService service = weatherService();
              WeatherModel weather =
                  await service.getweather(cityName: cityName!);
              weatherData = weather;
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              label: Text('Search'),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Enter a city',
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherData;
