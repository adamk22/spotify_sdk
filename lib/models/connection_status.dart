import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'connection_status.g.dart';

@JsonSerializable()
class ConnectionStatus {
  ConnectionStatus(
      this.connected, this.message, this.errorCode, this.errorDetails);

  @JsonKey(name: 'connected')
  final bool connected;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'errorCode')
  final String errorCode;
  @JsonKey(name: 'errorDetails')
  final String errorDetails;

  @JsonKey(ignore: true)
  bool hasError() {
    return errorCode?.isNotEmpty == true;
  }

  factory ConnectionStatus.fromJson(Map<String, dynamic> json) {
    return ConnectionStatus(
      connected: json['a'],
      message: json['b'],
      errorCode: json['c'] != null ? json['c'] : null,
      errorDetails: json['d'] != null ? json['d'] : null,
    );
  }

  Map<String, dynamic> toJson() => _$ConnectionStatusToJson(this);
}
