import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'connection_status.g.dart';

@JsonSerializable(explicitToJson: true)
class ConnectionStatus {
  ConnectionStatus(
      this.connected, this.message, this.errorCode, this.errorDetails);

  @JsonKey(name: 'a')
  final bool connected;
  @JsonKey(name: 'b')
  final String message;
  @JsonKey(name: 'c')
  final String errorCode;
  @JsonKey(name: 'd')
  final String errorDetails;

  @JsonKey(ignore: true)
  bool hasError() {
    return errorCode?.isNotEmpty == true;
  }

  factory ConnectionStatus.fromJson(Map<String, dynamic> json) =>
      _$ConnectionStatusFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectionStatusToJson(this);
}
