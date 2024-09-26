// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Test _$TestFromJson(Map<String, dynamic> json) {
  return _Test.fromJson(json);
}

/// @nodoc
mixin _$Test {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  ResultBean? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestCopyWith<Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res, Test>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'result') ResultBean? result,
      @JsonKey(name: 'timestamp') int? timestamp});

  $ResultBeanCopyWith<$Res>? get result;
}

/// @nodoc
class _$TestCopyWithImpl<$Res, $Val extends Test>
    implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? result = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultBean?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultBeanCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultBeanCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TestImplCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$$TestImplCopyWith(
          _$TestImpl value, $Res Function(_$TestImpl) then) =
      __$$TestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'result') ResultBean? result,
      @JsonKey(name: 'timestamp') int? timestamp});

  @override
  $ResultBeanCopyWith<$Res>? get result;
}

/// @nodoc
class __$$TestImplCopyWithImpl<$Res>
    extends _$TestCopyWithImpl<$Res, _$TestImpl>
    implements _$$TestImplCopyWith<$Res> {
  __$$TestImplCopyWithImpl(_$TestImpl _value, $Res Function(_$TestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? result = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$TestImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultBean?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestImpl implements _Test {
  const _$TestImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'result') this.result,
      @JsonKey(name: 'timestamp') this.timestamp});

  factory _$TestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'result')
  final ResultBean? result;
  @override
  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @override
  String toString() {
    return 'Test(success: $success, message: $message, code: $code, result: $result, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, code, result, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestImplCopyWith<_$TestImpl> get copyWith =>
      __$$TestImplCopyWithImpl<_$TestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestImplToJson(
      this,
    );
  }
}

abstract class _Test implements Test {
  const factory _Test(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'code') final int? code,
      @JsonKey(name: 'result') final ResultBean? result,
      @JsonKey(name: 'timestamp') final int? timestamp}) = _$TestImpl;

  factory _Test.fromJson(Map<String, dynamic> json) = _$TestImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'result')
  ResultBean? get result;
  @override
  @JsonKey(name: 'timestamp')
  int? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$TestImplCopyWith<_$TestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultBean _$ResultBeanFromJson(Map<String, dynamic> json) {
  return _ResultBean.fromJson(json);
}

/// @nodoc
mixin _$ResultBean {
  @JsonKey(name: 'records')
  List<RecordsBean>? get records => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  int? get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int? get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultBeanCopyWith<ResultBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultBeanCopyWith<$Res> {
  factory $ResultBeanCopyWith(
          ResultBean value, $Res Function(ResultBean) then) =
      _$ResultBeanCopyWithImpl<$Res, ResultBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<RecordsBean>? records,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'current') int? current,
      @JsonKey(name: 'pages') int? pages});
}

/// @nodoc
class _$ResultBeanCopyWithImpl<$Res, $Val extends ResultBean>
    implements $ResultBeanCopyWith<$Res> {
  _$ResultBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
    Object? total = freezed,
    Object? size = freezed,
    Object? current = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordsBean>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultBeanImplCopyWith<$Res>
    implements $ResultBeanCopyWith<$Res> {
  factory _$$ResultBeanImplCopyWith(
          _$ResultBeanImpl value, $Res Function(_$ResultBeanImpl) then) =
      __$$ResultBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<RecordsBean>? records,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'current') int? current,
      @JsonKey(name: 'pages') int? pages});
}

/// @nodoc
class __$$ResultBeanImplCopyWithImpl<$Res>
    extends _$ResultBeanCopyWithImpl<$Res, _$ResultBeanImpl>
    implements _$$ResultBeanImplCopyWith<$Res> {
  __$$ResultBeanImplCopyWithImpl(
      _$ResultBeanImpl _value, $Res Function(_$ResultBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
    Object? total = freezed,
    Object? size = freezed,
    Object? current = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$ResultBeanImpl(
      records: freezed == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordsBean>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultBeanImpl implements _ResultBean {
  const _$ResultBeanImpl(
      {@JsonKey(name: 'records') final List<RecordsBean>? records,
      @JsonKey(name: 'total') this.total,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'current') this.current,
      @JsonKey(name: 'pages') this.pages})
      : _records = records;

  factory _$ResultBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultBeanImplFromJson(json);

  final List<RecordsBean>? _records;
  @override
  @JsonKey(name: 'records')
  List<RecordsBean>? get records {
    final value = _records;
    if (value == null) return null;
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total')
  final int? total;
  @override
  @JsonKey(name: 'size')
  final int? size;
  @override
  @JsonKey(name: 'current')
  final int? current;
  @override
  @JsonKey(name: 'pages')
  final int? pages;

  @override
  String toString() {
    return 'ResultBean(records: $records, total: $total, size: $size, current: $current, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultBeanImpl &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      total,
      size,
      current,
      pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultBeanImplCopyWith<_$ResultBeanImpl> get copyWith =>
      __$$ResultBeanImplCopyWithImpl<_$ResultBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultBeanImplToJson(
      this,
    );
  }
}

abstract class _ResultBean implements ResultBean {
  const factory _ResultBean(
      {@JsonKey(name: 'records') final List<RecordsBean>? records,
      @JsonKey(name: 'total') final int? total,
      @JsonKey(name: 'size') final int? size,
      @JsonKey(name: 'current') final int? current,
      @JsonKey(name: 'pages') final int? pages}) = _$ResultBeanImpl;

  factory _ResultBean.fromJson(Map<String, dynamic> json) =
      _$ResultBeanImpl.fromJson;

  @override
  @JsonKey(name: 'records')
  List<RecordsBean>? get records;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'current')
  int? get current;
  @override
  @JsonKey(name: 'pages')
  int? get pages;
  @override
  @JsonKey(ignore: true)
  _$$ResultBeanImplCopyWith<_$ResultBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecordsBean _$RecordsBeanFromJson(Map<String, dynamic> json) {
  return _RecordsBean.fromJson(json);
}

/// @nodoc
mixin _$RecordsBean {
  @JsonKey(name: 'bondKey')
  String? get bondKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortName')
  String? get shortName => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiveTime')
  String? get receiveTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateStr')
  String? get dateStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'msgText')
  String? get msgText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsBeanCopyWith<RecordsBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsBeanCopyWith<$Res> {
  factory $RecordsBeanCopyWith(
          RecordsBean value, $Res Function(RecordsBean) then) =
      _$RecordsBeanCopyWithImpl<$Res, RecordsBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bondKey') String? bondKey,
      @JsonKey(name: 'shortName') String? shortName,
      @JsonKey(name: 'receiveTime') String? receiveTime,
      @JsonKey(name: 'dateStr') String? dateStr,
      @JsonKey(name: 'msgText') String? msgText});
}

/// @nodoc
class _$RecordsBeanCopyWithImpl<$Res, $Val extends RecordsBean>
    implements $RecordsBeanCopyWith<$Res> {
  _$RecordsBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bondKey = freezed,
    Object? shortName = freezed,
    Object? receiveTime = freezed,
    Object? dateStr = freezed,
    Object? msgText = freezed,
  }) {
    return _then(_value.copyWith(
      bondKey: freezed == bondKey
          ? _value.bondKey
          : bondKey // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveTime: freezed == receiveTime
          ? _value.receiveTime
          : receiveTime // ignore: cast_nullable_to_non_nullable
              as String?,
      dateStr: freezed == dateStr
          ? _value.dateStr
          : dateStr // ignore: cast_nullable_to_non_nullable
              as String?,
      msgText: freezed == msgText
          ? _value.msgText
          : msgText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordsBeanImplCopyWith<$Res>
    implements $RecordsBeanCopyWith<$Res> {
  factory _$$RecordsBeanImplCopyWith(
          _$RecordsBeanImpl value, $Res Function(_$RecordsBeanImpl) then) =
      __$$RecordsBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bondKey') String? bondKey,
      @JsonKey(name: 'shortName') String? shortName,
      @JsonKey(name: 'receiveTime') String? receiveTime,
      @JsonKey(name: 'dateStr') String? dateStr,
      @JsonKey(name: 'msgText') String? msgText});
}

/// @nodoc
class __$$RecordsBeanImplCopyWithImpl<$Res>
    extends _$RecordsBeanCopyWithImpl<$Res, _$RecordsBeanImpl>
    implements _$$RecordsBeanImplCopyWith<$Res> {
  __$$RecordsBeanImplCopyWithImpl(
      _$RecordsBeanImpl _value, $Res Function(_$RecordsBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bondKey = freezed,
    Object? shortName = freezed,
    Object? receiveTime = freezed,
    Object? dateStr = freezed,
    Object? msgText = freezed,
  }) {
    return _then(_$RecordsBeanImpl(
      bondKey: freezed == bondKey
          ? _value.bondKey
          : bondKey // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveTime: freezed == receiveTime
          ? _value.receiveTime
          : receiveTime // ignore: cast_nullable_to_non_nullable
              as String?,
      dateStr: freezed == dateStr
          ? _value.dateStr
          : dateStr // ignore: cast_nullable_to_non_nullable
              as String?,
      msgText: freezed == msgText
          ? _value.msgText
          : msgText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordsBeanImpl implements _RecordsBean {
  const _$RecordsBeanImpl(
      {@JsonKey(name: 'bondKey') this.bondKey,
      @JsonKey(name: 'shortName') this.shortName,
      @JsonKey(name: 'receiveTime') this.receiveTime,
      @JsonKey(name: 'dateStr') this.dateStr,
      @JsonKey(name: 'msgText') this.msgText});

  factory _$RecordsBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordsBeanImplFromJson(json);

  @override
  @JsonKey(name: 'bondKey')
  final String? bondKey;
  @override
  @JsonKey(name: 'shortName')
  final String? shortName;
  @override
  @JsonKey(name: 'receiveTime')
  final String? receiveTime;
  @override
  @JsonKey(name: 'dateStr')
  final String? dateStr;
  @override
  @JsonKey(name: 'msgText')
  final String? msgText;

  @override
  String toString() {
    return 'RecordsBean(bondKey: $bondKey, shortName: $shortName, receiveTime: $receiveTime, dateStr: $dateStr, msgText: $msgText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordsBeanImpl &&
            (identical(other.bondKey, bondKey) || other.bondKey == bondKey) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.receiveTime, receiveTime) ||
                other.receiveTime == receiveTime) &&
            (identical(other.dateStr, dateStr) || other.dateStr == dateStr) &&
            (identical(other.msgText, msgText) || other.msgText == msgText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, bondKey, shortName, receiveTime, dateStr, msgText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordsBeanImplCopyWith<_$RecordsBeanImpl> get copyWith =>
      __$$RecordsBeanImplCopyWithImpl<_$RecordsBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordsBeanImplToJson(
      this,
    );
  }
}

abstract class _RecordsBean implements RecordsBean {
  const factory _RecordsBean(
      {@JsonKey(name: 'bondKey') final String? bondKey,
      @JsonKey(name: 'shortName') final String? shortName,
      @JsonKey(name: 'receiveTime') final String? receiveTime,
      @JsonKey(name: 'dateStr') final String? dateStr,
      @JsonKey(name: 'msgText') final String? msgText}) = _$RecordsBeanImpl;

  factory _RecordsBean.fromJson(Map<String, dynamic> json) =
      _$RecordsBeanImpl.fromJson;

  @override
  @JsonKey(name: 'bondKey')
  String? get bondKey;
  @override
  @JsonKey(name: 'shortName')
  String? get shortName;
  @override
  @JsonKey(name: 'receiveTime')
  String? get receiveTime;
  @override
  @JsonKey(name: 'dateStr')
  String? get dateStr;
  @override
  @JsonKey(name: 'msgText')
  String? get msgText;
  @override
  @JsonKey(ignore: true)
  _$$RecordsBeanImplCopyWith<_$RecordsBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
