// ignore_for_file: file_names

class WheatherModel {
  double? tempreture;
  int  ? humedity;
  String? desCribtion;
  String? cityName;
  num ? windSpeed;
  num  ? condition;
  WheatherModel(
      {this.tempreture,
      this.windSpeed,
      this.cityName,
      this.desCribtion,
      this.humedity});
  WheatherModel.fromJson(Map<String, dynamic> json)
      : tempreture = json['main']['temp'] as double,
        windSpeed = json['wind']['speed'] as num,
        cityName = json['name'],
        humedity = json['main']['humidity'] as int ,
        desCribtion = json['weather'][0]['description'] ,
        condition=json['weather'][0]['id'] as num 
        ;
}
