import 'package:equatable/equatable.dart';

class StoreEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  final int id;
  final String name;
  final double accountNumber;
  final int branchId;
  final String storeManager;
  final String managerPhone;
  final String note;

  const StoreEntity(
      {required this.id,
      required this.name,
      required this.accountNumber,
      required this.branchId,
      required this.storeManager,
      required this.managerPhone,
      required this.note});

  @override
  List<Object?> get props =>
      [id, name, accountNumber, branchId, storeManager, managerPhone, note];
}
