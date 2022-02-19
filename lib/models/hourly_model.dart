// ignore_for_file: unused_label

class HWheather {
  int? hTime;
  num? hTemp;
  int? hCondtion;
  HWheather({this.hTime, this.hTemp, this.hCondtion});
  factory HWheather.fromJson(Map<String, dynamic> json) => HWheather(
        hTime: json["time"] as int,
        hTemp: json["temp"] as num,
        hCondtion: json['weather'][0]['id'] as int  ,
      );
  
}
 



  // hTime:
  //   json['dt'] as int;
  //   hTemp:
  //   json['temp'] as num;
  //   hCondtion:
  //   json['weather'][0]['id'] as int;