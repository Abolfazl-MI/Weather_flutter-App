import 'dart:developer';

import 'package:amanta/utils/costance.dart';
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


    try {
      response = await dio.get(Constants.instance.url, queryParameters: {
        'lat': lat,
        'lon': lon,
        'appid': Constants.instance.apiKey,
        'units': 'metric'
      });
      return response!;
    } catch (e) {
      throw Exception(e);
      log(e.toString());
    }

    return response!;
  }
}
