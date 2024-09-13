// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_trick_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoryTrickModel _$MemoryTrickModelFromJson(Map<String, dynamic> json) {
  return _MemoryTrickModel.fromJson(json);
}

/// @nodoc
mixin _$MemoryTrickModel {
  String get content => throw _privateConstructorUsedError;
  MemoryTrickType get type => throw _privateConstructorUsedError;

  /// Serializes this MemoryTrickModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoryTrickModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoryTrickModelCopyWith<MemoryTrickModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryTrickModelCopyWith<$Res> {
  factory $MemoryTrickModelCopyWith(
          MemoryTrickModel value, $Res Function(MemoryTrickModel) then) =
      _$MemoryTrickModelCopyWithImpl<$Res, MemoryTrickModel>;
  @useResult
  $Res call({String content, MemoryTrickType type});
}

/// @nodoc
class _$MemoryTrickModelCopyWithImpl<$Res, $Val extends MemoryTrickModel>
    implements $MemoryTrickModelCopyWith<$Res> {
  _$MemoryTrickModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoryTrickModel
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
abstract class _$$MemoryTrickModelImplCopyWith<$Res>
    implements $MemoryTrickModelCopyWith<$Res> {
  factory _$$MemoryTrickModelImplCopyWith(_$MemoryTrickModelImpl value,
          $Res Function(_$MemoryTrickModelImpl) then) =
      __$$MemoryTrickModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, MemoryTrickType type});
}

/// @nodoc
class __$$MemoryTrickModelImplCopyWithImpl<$Res>
    extends _$MemoryTrickModelCopyWithImpl<$Res, _$MemoryTrickModelImpl>
    implements _$$MemoryTrickModelImplCopyWith<$Res> {
  __$$MemoryTrickModelImplCopyWithImpl(_$MemoryTrickModelImpl _value,
      $Res Function(_$MemoryTrickModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoryTrickModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$MemoryTrickModelImpl(
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
class _$MemoryTrickModelImpl implements _MemoryTrickModel {
  const _$MemoryTrickModelImpl({required this.content, required this.type});

  factory _$MemoryTrickModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoryTrickModelImplFromJson(json);

  @override
  final String content;
  @override
  final MemoryTrickType type;

  @override
  String toString() {
    return 'MemoryTrickModel(content: $content, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryTrickModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, type);

  /// Create a copy of MemoryTrickModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryTrickModelImplCopyWith<_$MemoryTrickModelImpl> get copyWith =>
      __$$MemoryTrickModelImplCopyWithImpl<_$MemoryTrickModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoryTrickModelImplToJson(
      this,
    );
  }
}

abstract class _MemoryTrickModel implements MemoryTrickModel {
  const factory _MemoryTrickModel(
      {required final String content,
      required final MemoryTrickType type}) = _$MemoryTrickModelImpl;

  factory _MemoryTrickModel.fromJson(Map<String, dynamic> json) =
      _$MemoryTrickModelImpl.fromJson;

  @override
  String get content;
  @override
  MemoryTrickType get type;

  /// Create a copy of MemoryTrickModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoryTrickModelImplCopyWith<_$MemoryTrickModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
