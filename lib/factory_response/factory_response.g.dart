// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'factory_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FactoryResponse _$FactoryResponseFromJson(Map<String, dynamic> json) =>
    FactoryResponse(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$FactoryResponseToJson(FactoryResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
