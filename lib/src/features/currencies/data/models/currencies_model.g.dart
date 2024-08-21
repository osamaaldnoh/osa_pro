// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrenciesModel _$CurrenciesModelFromJson(Map<String, dynamic> json) =>
    CurrenciesModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      subName: json['sub_name'] as String,
      value: (json['value'] as num).toInt(),
      equivelant: (json['equivelant'] as num).toInt(),
      localCurrency: json['local_currency'] as bool,
      storeCurrency: json['store_currency'] as bool,
      maxValue: (json['max_value'] as num).toInt(),
      minValue: (json['min_value'] as num).toInt(),
      note: json['note'] as String?,
      newData: json['newData'] as bool,
    );

Map<String, dynamic> _$CurrenciesModelToJson(CurrenciesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'sub_name': instance.subName,
      'value': instance.value,
      'equivelant': instance.equivelant,
      'local_currency': instance.localCurrency,
      'store_currency': instance.storeCurrency,
      'max_value': instance.maxValue,
      'min_value': instance.minValue,
      'note': instance.note,
      'newData': instance.newData,
    };
