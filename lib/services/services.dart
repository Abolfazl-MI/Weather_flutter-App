import 'dart:developer';

import 'package:amanta/models/wheatherModel.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';

class Services {
  static final Dio _dio = Dio();
  String url = 'api.openweathermap.org/data/2.5/weather';
  Future fetchData(Position position) async {
    double lat = position.latitude;
    double lon = position.longitude;
    String appid = '9bbb071dda1a4d958dae4f004cb5f92c';
    String units = 'metric';
    Response response = await _dio.get(url, queryParameters: {
      'lat': lat,
      'lon': lon,
      'appid': appid,
      'units': units
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = response.data;
      WheatherModel wheatherModel = WheatherModel.fromJson(jsonData);
      return wheatherModel;
    } else {
      log('${response.statusCode} ${response.statusMessage}  ');
    }
    return;
  }
}
