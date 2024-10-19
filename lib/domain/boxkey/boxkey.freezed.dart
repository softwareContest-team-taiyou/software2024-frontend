// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boxkey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoxKey {
  String get keyId => throw _privateConstructorUsedError;
  String get keyName => throw _privateConstructorUsedError;
  String get boxId => throw _privateConstructorUsedError;
  String get boxName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoxKeyCopyWith<BoxKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxKeyCopyWith<$Res> {
  factory $BoxKeyCopyWith(BoxKey value, $Res Function(BoxKey) then) =
      _$BoxKeyCopyWithImpl<$Res, BoxKey>;
  @useResult
  $Res call({String keyId, String keyName, String boxId, String boxName});
}

/// @nodoc
class _$BoxKeyCopyWithImpl<$Res, $Val extends BoxKey>
    implements $BoxKeyCopyWith<$Res> {
  _$BoxKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyId = null,
    Object? keyName = null,
    Object? boxId = null,
    Object? boxName = null,
  }) {
    return _then(_value.copyWith(
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as String,
      keyName: null == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String,
      boxId: null == boxId
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as String,
      boxName: null == boxName
          ? _value.boxName
          : boxName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoxKeyImplCopyWith<$Res> implements $BoxKeyCopyWith<$Res> {
  factory _$$BoxKeyImplCopyWith(
          _$BoxKeyImpl value, $Res Function(_$BoxKeyImpl) then) =
      __$$BoxKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyId, String keyName, String boxId, String boxName});
}

/// @nodoc
class __$$BoxKeyImplCopyWithImpl<$Res>
    extends _$BoxKeyCopyWithImpl<$Res, _$BoxKeyImpl>
    implements _$$BoxKeyImplCopyWith<$Res> {
  __$$BoxKeyImplCopyWithImpl(
      _$BoxKeyImpl _value, $Res Function(_$BoxKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyId = null,
    Object? keyName = null,
    Object? boxId = null,
    Object? boxName = null,
  }) {
    return _then(_$BoxKeyImpl(
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as String,
      keyName: null == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String,
      boxId: null == boxId
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as String,
      boxName: null == boxName
          ? _value.boxName
          : boxName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BoxKeyImpl implements _BoxKey {
  const _$BoxKeyImpl(
      {required this.keyId,
      required this.keyName,
      required this.boxId,
      required this.boxName});

  @override
  final String keyId;
  @override
  final String keyName;
  @override
  final String boxId;
  @override
  final String boxName;

  @override
  String toString() {
    return 'BoxKey(keyId: $keyId, keyName: $keyName, boxId: $boxId, boxName: $boxName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxKeyImpl &&
            (identical(other.keyId, keyId) || other.keyId == keyId) &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.boxId, boxId) || other.boxId == boxId) &&
            (identical(other.boxName, boxName) || other.boxName == boxName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyId, keyName, boxId, boxName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoxKeyImplCopyWith<_$BoxKeyImpl> get copyWith =>
      __$$BoxKeyImplCopyWithImpl<_$BoxKeyImpl>(this, _$identity);
}

abstract class _BoxKey implements BoxKey {
  const factory _BoxKey(
      {required final String keyId,
      required final String keyName,
      required final String boxId,
      required final String boxName}) = _$BoxKeyImpl;

  @override
  String get keyId;
  @override
  String get keyName;
  @override
  String get boxId;
  @override
  String get boxName;
  @override
  @JsonKey(ignore: true)
  _$$BoxKeyImplCopyWith<_$BoxKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
