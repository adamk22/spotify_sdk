// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectionStatus _$ConnectionStatusFromJson(Map<String, dynamic> json) {
  return ConnectionStatus(
    json['a'] as bool,
    json['b'] as String,
    json['c'] as String,
    json['d'] as String,
  );
}

Map<String, dynamic> _$ConnectionStatusToJson(ConnectionStatus instance) =>
    <String, dynamic>{
      'a': instance.connected,
      'b': instance.message,
      'c': instance.errorCode,
      'd': instance.errorDetails,
    };
