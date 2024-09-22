import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class ItemAlternativeEntity extends Equatable {
  final int id;
  @JsonKey(name: 'item_id')
  final int itemId;
  @JsonKey(name: 'item_alternative_id')
  final int itemAlternativeId;
  @JsonKey(name: 'item_order')
  final int itemOrder;

  const ItemAlternativeEntity(
      {required this.id,
      required this.itemId,
      required this.itemAlternativeId,
      required this.itemOrder});

  @override
  List<Object?> get props => [id, itemId, itemAlternativeId, itemOrder];

  // ...
  // An entity represents a real-world object with a distinct identity.
}
