import 'package:equatable/equatable.dart';

class AccountsEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  final int id;
  final double accNumber;
  final String accName;
  final double accParent;
  final int accType;
  final int accLevel;
  final String note;
  final int accCatagory;
  final int accCatId;
  final String accPhone;
  final String address;
  final String email;
  final int accLimit;
  final int paymentType;
  final int branchId;
  final bool accStoped;
  final bool newData;

  const AccountsEntity({
    required this.id,
    required this.accNumber,
    required this.accName,
    required this.accParent,
    required this.accType,
    required this.accLevel,
    required this.note,
    required this.accCatagory,
    required this.accCatId,
    required this.accPhone,
    required this.address,
    required this.email,
    required this.accLimit,
    required this.paymentType,
    required this.branchId,
    required this.accStoped,
    required this.newData,
  });
  @override
  List<Object?> get props => [
        id,
        accNumber,
        accName,
        accParent,
        accType,
        accLevel,
        note,
        accCatagory,
        accCatId,
        accPhone,
        address,
        email,
        accLimit,
        paymentType,
        branchId,
        accStoped,
        newData,
      ];
}
