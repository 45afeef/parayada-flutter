// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_trick.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoryTrick _$MemoryTrickFromJson(Map<String, dynamic> json) {
  return _MemoryTrick.fromJson(json);
}

/// @nodoc
mixin _$MemoryTrick {
  String get content => throw _privateConstructorUsedError;
  MemoryTrickType get type => throw _privateConstructorUsedError;

  /// Serializes this MemoryTrick to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoryTrick
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoryTrickCopyWith<MemoryTrick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryTrickCopyWith<$Res> {
  factory $MemoryTrickCopyWith(
          MemoryTrick value, $Res Function(MemoryTrick) then) =
      _$MemoryTrickCopyWithImpl<$Res, MemoryTrick>;
  @useResult
  $Res call({String content, MemoryTrickType type});
}

/// @nodoc
class _$MemoryTrickCopyWithImpl<$Res, $Val extends MemoryTrick>
    implements $MemoryTrickCopyWith<$Res> {
  _$MemoryTrickCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoryTrick
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MemoryTrickType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoryTrickImplCopyWith<$Res>
    implements $MemoryTrickCopyWith<$Res> {
  factory _$$MemoryTrickImplCopyWith(
          _$MemoryTrickImpl value, $Res Function(_$MemoryTrickImpl) then) =
      __$$MemoryTrickImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, MemoryTrickType type});
}

/// @nodoc
class __$$MemoryTrickImplCopyWithImpl<$Res>
    extends _$MemoryTrickCopyWithImpl<$Res, _$MemoryTrickImpl>
    implements _$$MemoryTrickImplCopyWith<$Res> {
  __$$MemoryTrickImplCopyWithImpl(
      _$MemoryTrickImpl _value, $Res Function(_$MemoryTrickImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryTrick
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$MemoryTrickImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MemoryTrickType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoryTrickImpl implements _MemoryTrick {
  const _$MemoryTrickImpl({required this.content, required this.type});

  factory _$MemoryTrickImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoryTrickImplFromJson(json);

  @override
  final String content;
  @override
  final MemoryTrickType type;

  @override
  String toString() {
    return 'MemoryTrick(content: $content, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryTrickImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, type);

  /// Create a copy of MemoryTrick
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryTrickImplCopyWith<_$MemoryTrickImpl> get copyWith =>
      __$$MemoryTrickImplCopyWithImpl<_$MemoryTrickImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoryTrickImplToJson(
      this,
    );
  }
}

abstract class _MemoryTrick implements MemoryTrick {
  const factory _MemoryTrick(
      {required final String content,
      required final MemoryTrickType type}) = _$MemoryTrickImpl;

  factory _MemoryTrick.fromJson(Map<String, dynamic> json) =
      _$MemoryTrickImpl.fromJson;

  @override
  String get content;
  @override
  MemoryTrickType get type;

  /// Create a copy of MemoryTrick
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryTrickImplCopyWith<_$MemoryTrickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
