// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Box {
  String get name => throw _privateConstructorUsedError;
  bool get isLock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoxCopyWith<Box> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxCopyWith<$Res> {
  factory $BoxCopyWith(Box value, $Res Function(Box) then) =
      _$BoxCopyWithImpl<$Res, Box>;
  @useResult
  $Res call({String name, bool isLock});
}

/// @nodoc
class _$BoxCopyWithImpl<$Res, $Val extends Box> implements $BoxCopyWith<$Res> {
  _$BoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isLock = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLock: null == isLock
          ? _value.isLock
          : isLock // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoxImplCopyWith<$Res> implements $BoxCopyWith<$Res> {
  factory _$$BoxImplCopyWith(_$BoxImpl value, $Res Function(_$BoxImpl) then) =
      __$$BoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool isLock});
}

/// @nodoc
class __$$BoxImplCopyWithImpl<$Res> extends _$BoxCopyWithImpl<$Res, _$BoxImpl>
    implements _$$BoxImplCopyWith<$Res> {
  __$$BoxImplCopyWithImpl(_$BoxImpl _value, $Res Function(_$BoxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isLock = null,
  }) {
    return _then(_$BoxImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLock: null == isLock
          ? _value.isLock
          : isLock // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BoxImpl implements _Box {
  const _$BoxImpl({required this.name, required this.isLock});

  @override
  final String name;
  @override
  final bool isLock;

  @override
  String toString() {
    return 'Box(name: $name, isLock: $isLock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isLock, isLock) || other.isLock == isLock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isLock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoxImplCopyWith<_$BoxImpl> get copyWith =>
      __$$BoxImplCopyWithImpl<_$BoxImpl>(this, _$identity);
}

abstract class _Box implements Box {
  const factory _Box({required final String name, required final bool isLock}) =
      _$BoxImpl;

  @override
  String get name;
  @override
  bool get isLock;
  @override
  @JsonKey(ignore: true)
  _$$BoxImplCopyWith<_$BoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
