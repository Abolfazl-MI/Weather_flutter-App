import 'dart:developer';

import 'package:amanta/models/wheatherModel.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';

class ApiServices {
  var dio = Dio();
  Response? response;
  Future<Response> fetchData(
    Position possion,
  ) async {
    var lat = possion.latitude;
    var lon = possion.longitude;

    String? link = 'https://api.openweathermap.org/data/2.5/weather';
    String apikey = '9bbb071dda1a4d958dae4f004cb5f92c';
    try {
      response = await dio.get(link, queryParameters: {
        'lat': lat,
        'lon': lon,
        'appid': apikey,
        'units': 'metric'
      });
      return response!;
    } catch (e) {
      log('${e}');
    }
    return response!;
  }
}
