import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/currencies/domain/entities/currencies_entities.dart';
part 'currencies_model.g.dart';

@JsonSerializable()
class CurrenciesModel extends CurrenciesEntity {
  CurrenciesModel(
      {required super.id,
      required super.name,
      required super.symbol,
      required super.subName,
      required super.value,
      required super.equivelant,
      required super.localCurrency,
      required super.storeCurrency,
      required super.maxValue,
      required super.minValue,
      required super.note,
      required super.newData});

  factory CurrenciesModel.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrenciesModelToJson(this);

  CurrenciesTableCompanion toCompanion() {
    return CurrenciesTableCompanion(
        id: Value(id ?? -1),
        name: Value(name),
        symbol: Value(symbol),
        subName: Value(subName),
        value: Value(value),
        equivelant: Value(equivelant),
        localCurrency: Value(localCurrency),
        storeCurrency: Value(storeCurrency),
        maxValue: Value(maxValue),
        minValue: Value(minValue),
        note: Value(note ?? ''),
        newData: Value(newData));
  }

  // ...
  // A model is a more generic term and can represent structured data used within an application.
  // ...
  // fromJson
  // ...
  // toJson
}
