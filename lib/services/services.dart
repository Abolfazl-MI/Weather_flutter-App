import 'dart:developer';

import 'package:amanta/models/hourly_model.dart';
import 'package:amanta/utils/costance.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';

class ApiServices {
  var dio = Dio();
  Response? response;
  Response? hourlyResponse;
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
      log(response!.data.toString(), name: 'ApiServices-Curent');
      return response!;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<HWheather>> fetchHourlyData(
    Position possion,
  ) async {
    List<dynamic> hDataList;
    var lat = possion.latitude;
    var lon = possion.longitude;

    try {
      hourlyResponse = await dio.get(Constants.instance.hUrl, queryParameters: {
        'lat': lat,
        'lon': lon,
        'exclude': 1,
        'appid': Constants.instance.apiKey,
        'units': 'metric'
      });
      // log(hourlyResponse!.data.toString(), name: 'ApiServices-Hourly');
      hDataList = hourlyResponse!.data['hourly'];

      // List<HWheather> myList = hDataList.map((i) {
      //   log(i['weather'][0]['id'].toString());
      //   log(i['dt'].toString());
      //   return HWheather.fromJson(i);
      // }).toList();

      List<HWheather> dataResived = [];
      for (var iteam in hDataList) {
        HWheather newModel = HWheather(
          hTime: iteam['dt'],
          hCondtion: iteam['weather'][0]['id'],
          hTemp: iteam['temp'],
        );
        dataResived.add(newModel);
        log(dataResived.length.toString());
      }
      return dataResived;
    } catch (e) {
      throw Exception(e);
    }
  }
}
