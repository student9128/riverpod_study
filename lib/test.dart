import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
class Test with _$Test {
  const factory Test({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'result') ResultBean? result,
    @JsonKey(name: 'timestamp') int? timestamp,
  }) = _Test;

  factory Test.fromJson(Map<String, Object?> json) => _$TestFromJson(json);
}

@freezed
class ResultBean with _$ResultBean {
  const factory ResultBean({
    @JsonKey(name: 'records') List<RecordsBean>? records,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'size') int? size,
    @JsonKey(name: 'current') int? current,
    @JsonKey(name: 'pages') int? pages,
  }) = _ResultBean;

  factory ResultBean.fromJson(Map<String, Object?> json) => _$ResultBeanFromJson(json);
}

@freezed
class RecordsBean with _$RecordsBean {
  const factory RecordsBean({
    @JsonKey(name: 'bondKey') String? bondKey,
    @JsonKey(name: 'shortName') String? shortName,
    @JsonKey(name: 'receiveTime') String? receiveTime,
    @JsonKey(name: 'dateStr') String? dateStr,
    @JsonKey(name: 'msgText') String? msgText,
  }) = _RecordsBean;

  factory RecordsBean.fromJson(Map<String, Object?> json) => _$RecordsBeanFromJson(json);
}

