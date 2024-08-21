import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class CompanyEntity extends Equatable {
  final int? id;
  final String name;
  @JsonKey(name: 'en_name')
  final String enName;
  @JsonKey(name: 'short_name')
  final String shortName;
  @JsonKey(name: 'short_en_name')
  final String shortEnName;
  @JsonKey(name: 'website')
  final String webSite;
  final String address;
  final String note;
  final String logo;

  const CompanyEntity(
      {required this.id,
      required this.name,
      required this.enName,
      required this.shortName,
      required this.shortEnName,
      required this.webSite,
      required this.address,
      required this.note,
      required this.logo});

  @override
  List<Object?> get props => [
        id,
        name,
        enName,
        shortName,
        shortEnName,
        webSite,
        address,
        note,
        logo,
      ];
}
