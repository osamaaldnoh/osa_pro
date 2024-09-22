import 'package:equatable/equatable.dart';

class ItemGroupsEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  final int id;
  final int code;
  final String name;
  final int type;
  final int parent;
  final String note;
  final bool newData;

  ItemGroupsEntity(
      {required this.id,
      required this.code,
      required this.name,
      required this.type,
      required this.parent,
      required this.note,
      required this.newData});

  @override
  // TODO: implement props
  List<Object?> get props => [id, code, name, type, parent, note, newData];
}

//     "id": 1,
// "code": 1,
// "name": "العصائر",
// "type": 0,
// "parent": 0,
// "note": "",
// "newData": true
