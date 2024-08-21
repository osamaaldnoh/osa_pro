import 'package:osa_pro/src/features/auth/domain/entities/device_info_entity.dart';

class DeviceInfoModel extends DeviceInfoEntity {
  DeviceInfoModel(
      {required super.deviceid,
      required super.devicename,
      required super.devicemodel,
      required super.devicetype,
      required super.userid});
  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) {
    return DeviceInfoModel(
        deviceid: json['deviceid'],
        devicename: json['devicename'],
        devicemodel: json['devicemodel'],
        devicetype: json['devicetype'],
        userid: json['userid']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['deviceid'] = deviceid;
    data['devicename'] = devicename;
    data['devicemodel'] = devicemodel;
    data['devicetype'] = devicetype;
    data['userid'] = userid;
    return data;
  }
}
