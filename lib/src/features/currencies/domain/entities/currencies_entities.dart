import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class CurrenciesEntity extends Equatable {
  final int? id;
  final String name;
  final String symbol;
  @JsonKey(name: 'sub_name')
  final String subName;
  final int value;
  final int equivelant;
  @JsonKey(name: 'local_currency')
  final bool localCurrency;
  @JsonKey(name: 'store_currency')
  final bool storeCurrency;
  @JsonKey(name: 'max_value')
  final int maxValue;
  @JsonKey(name: 'min_value')
  final int minValue;
  final String? note;
  final bool newData;

  CurrenciesEntity(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.subName,
      required this.value,
      required this.equivelant,
      required this.localCurrency,
      required this.storeCurrency,
      required this.maxValue,
      required this.minValue,
      required this.note,
      required this.newData});

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        symbol,
        subName,
        value,
        equivelant,
        localCurrency,
        storeCurrency,
        maxValue,
        minValue,
        note,
        newData
      ];
}
