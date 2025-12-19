// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_bridge_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsEventBridgeEvent _$AwsEventBridgeEventFromJson(Map<String, dynamic> json) =>
    AwsEventBridgeEvent(
      id: json['id'] as String?,
      version: json['version'] as String?,
      detailType: json['detail-type'] as String?,
      region: json['region'] as String?,
      source: json['source'] as String?,
      time: json['time'] as String?,
      detail: json['detail'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AwsEventBridgeEventToJson(
  AwsEventBridgeEvent instance,
) => <String, dynamic>{
  'id': instance.id,
  'version': instance.version,
  'detail-type': instance.detailType,
  'region': instance.region,
  'source': instance.source,
  'time': instance.time,
  'detail': instance.detail,
};
