// ignore_for_file: file_names
// TODO برای سریالایزینگ اگه خواستیم میتونیم از پکیج ها استفاده کنیم اما این روش دستی هست که من اجرا میکنم :)
class WheatherModel {
  String? tempreture;
  String? humedity; //todo  این رطوبت که املا اون شاید بد باشه
  String? desCribtion;
  String? cityName;
  String? windSpeed;
  WheatherModel(
      {this.tempreture,
      this.windSpeed,
      this.cityName,
      this.desCribtion,
      this.humedity});
  WheatherModel.fromJson(Map<String, dynamic> json)
      : tempreture = json['main']['temp'],
        windSpeed = json['wind']['speed'],
        cityName = json['name'],
        humedity = json['main']['humidity'],
        desCribtion = json['weather']['description'];
}
