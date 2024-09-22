import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class BranchInfoEntity extends Equatable {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "company_id")
  final int companyId;
  final String name;
  final String address;
  final String phone;
  final String email;
  @JsonKey(name: "ar_report_header")
  final String arReportHeader;
  @JsonKey(name: "en_report_header")
  final String enReportHeader;
  final String logo;

  BranchInfoEntity({
    required this.id,
    required this.companyId,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.arReportHeader,
    required this.enReportHeader,
    required this.logo,
  });

  @override
  List<Object?> get props => [
        id,
        companyId,
        name,
        address,
        phone,
        email,
        arReportHeader,
        enReportHeader,
        logo
      ];
}
