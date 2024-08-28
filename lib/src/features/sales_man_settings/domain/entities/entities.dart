import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class SalesManSettingsEntity extends Equatable {
  @JsonKey(name: 'cust_parent')
  final int custParent;
  @JsonKey(name: 'generate_code')
  final String generateCode;
  @JsonKey(name: 'cust_group')
  final int custGroup;

  const SalesManSettingsEntity(
      {required this.custParent,
      required this.generateCode,
      required this.custGroup});

  // ...
  // An entity represents a real-world object with a distinct identity.

  @override
  List<Object?> get props => [];
}

// "cust_parent": 1020103,
// "generate_code": "10201032",
// "cust_group": 302
