import 'dart:convert';

import 'package:aws_lambda_dart_runtime/runtime/event.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_bridge_event.g.dart';

extension on Map<String, dynamic> {
  Map<String, dynamic> stripNullValues() =>
      this..removeWhere((key, value) => value == null);
}

@JsonSerializable()
class AwsEventBridgeEvent extends Event {
  @JsonKey()
  final String? id;

  @JsonKey()
  final String? version;

  @JsonKey(name: 'detail-type')
  final String? detailType;

  @JsonKey()
  final String? region;

  @JsonKey()
  final String? source;

  @JsonKey()
  final String? time;

  @JsonKey()
  final Map<String, dynamic>? detail;

  const AwsEventBridgeEvent({
    this.id,
    this.version,
    this.detailType,
    this.region,
    this.source,
    this.time,
    this.detail,
  });

  factory AwsEventBridgeEvent.fromJson(Map<String, dynamic> json) =>
      _$AwsEventBridgeEventFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AwsEventBridgeEventToJson(this).stripNullValues();

  String toString() =>
      'AwsEventBridgeEvent(detailType: $detailType' +
      (detail == null ? ')' : ', details: ${jsonEncode(detail)})');
}
