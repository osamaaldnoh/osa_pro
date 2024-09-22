import 'package:equatable/equatable.dart';

class UnitsEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  final int id;
  final String name;
  final String note;
  final bool newData;

  const UnitsEntity(
      {required this.id,
      required this.name,
      required this.note,
      required this.newData});
  @override
  List<Object?> get props => [id, name, note, newData];
}

//     "id": 1,
// "name": "كرتون",
// "note": "",
// "newData": true
