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
    final connected = json['a'];
    final message = json['b'];
    final errorCode = json['c'] ?? null;
    final errorDetails = json['d'] ?? null;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'a': instance.connected,
      'b': instance.message,
      'c': instance.errorCode,
      'd': instance.errorDetails,
    };
  }
}
