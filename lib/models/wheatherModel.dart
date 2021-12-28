// ignore_for_file: file_names
// TODO برای سریالایزینگ اگه خواستیم میتونیم از پکیج ها استفاده کنیم اما این روش دستی هست که من اجرا میکنم :)
import 'dart:ffi';

class WheatherModel {
  double? tempreture;
  int? humedity; //todo  این رطوبت که املا اون شاید بد باشه
  String? desCribtion;
  String? cityName;
  double? windSpeed;
  WheatherModel(
      {this.tempreture,
      this.windSpeed,
      this.cityName,
      this.desCribtion,
      this.humedity});
  WheatherModel.fromJson(Map<String, dynamic> json)
      : tempreture = json['main']['temp'] as double,
        windSpeed = json['wind']['speed'] as double,
        cityName = json['name'],
        humedity = json['main']['humidity'] as int,
        desCribtion = json['weather'][0]['description'];
}
