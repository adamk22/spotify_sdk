import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

class ConnectionStatus {
  ConnectionStatus(
      this.connected, this.message, this.errorCode, this.errorDetails);

  final bool connected;
  final String message;
  final String errorCode;
  final String errorDetails;

  bool hasError() {
    return errorCode?.isNotEmpty == true;
  }

  factory ConnectionStatus.fromJson(Map<String, dynamic> json) {
    print('fromJson $json');
    print('fromJson 2 ${json['a']}');
    final connected = json['a'] as bool;
    final message = json['b'] as String;
    final errorCode = json['c'] != null ? json['c'] as String : null;
    final errorDetails = json['d'] != null ? json['d'] as String : null;
    return ConnectionStatus(connected, message, errorCode, errorDetails);
  }

  Map<String, dynamic> toJson(ConnectionStatus instance) {
    return <String, dynamic>{
      'a': instance.connected,
      'b': instance.message,
      'c': instance.errorCode,
      'd': instance.errorDetails,
    };
  }
}
