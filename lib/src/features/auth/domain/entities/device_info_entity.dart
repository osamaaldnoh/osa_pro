import 'package:equatable/equatable.dart';

class DeviceInfoEntity extends Equatable {
  final String? deviceid;
  final String? devicename;
  final String? devicemodel;
  final String? devicetype;
  final String? userid;

  DeviceInfoEntity(
      {required this.deviceid,
      required this.devicename,
      required this.devicemodel,
      required this.devicetype,
      required this.userid});

  @override
  List<Object?> get props =>
      [deviceid, devicename, devicemodel, devicetype, userid];
}
