// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestImpl _$$TestImplFromJson(Map<String, dynamic> json) => _$TestImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      result: json['result'] == null
          ? null
          : ResultBean.fromJson(json['result'] as Map<String, dynamic>),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TestImplToJson(_$TestImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'result': instance.result,
      'timestamp': instance.timestamp,
    };

_$ResultBeanImpl _$$ResultBeanImplFromJson(Map<String, dynamic> json) =>
    _$ResultBeanImpl(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => RecordsBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      current: (json['current'] as num?)?.toInt(),
      pages: (json['pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResultBeanImplToJson(_$ResultBeanImpl instance) =>
    <String, dynamic>{
      'records': instance.records,
      'total': instance.total,
      'size': instance.size,
      'current': instance.current,
      'pages': instance.pages,
    };

_$RecordsBeanImpl _$$RecordsBeanImplFromJson(Map<String, dynamic> json) =>
    _$RecordsBeanImpl(
      bondKey: json['bondKey'] as String?,
      shortName: json['shortName'] as String?,
      receiveTime: json['receiveTime'] as String?,
      dateStr: json['dateStr'] as String?,
      msgText: json['msgText'] as String?,
    );

Map<String, dynamic> _$$RecordsBeanImplToJson(_$RecordsBeanImpl instance) =>
    <String, dynamic>{
      'bondKey': instance.bondKey,
      'shortName': instance.shortName,
      'receiveTime': instance.receiveTime,
      'dateStr': instance.dateStr,
      'msgText': instance.msgText,
    };
