// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) {
  return _LessonModel.fromJson(json);
}

/// @nodoc
mixin _$LessonModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String>? get externalLinks => throw _privateConstructorUsedError;
  List<String>? get topics => throw _privateConstructorUsedError;
  List<MindMap>? get mindMaps => throw _privateConstructorUsedError;
  List<MemoryTrickModel>? get memoryTricks =>
      throw _privateConstructorUsedError;

  /// Serializes this LessonModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonModelCopyWith<LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(
          LessonModel value, $Res Function(LessonModel) then) =
      _$LessonModelCopyWithImpl<$Res, LessonModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<String>? externalLinks,
      List<String>? topics,
      List<MindMap>? mindMaps,
      List<MemoryTrickModel>? memoryTricks});
}

/// @nodoc
class _$LessonModelCopyWithImpl<$Res, $Val extends LessonModel>
    implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? externalLinks = freezed,
    Object? topics = freezed,
    Object? mindMaps = freezed,
    Object? memoryTricks = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalLinks: freezed == externalLinks
          ? _value.externalLinks
          : externalLinks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mindMaps: freezed == mindMaps
          ? _value.mindMaps
          : mindMaps // ignore: cast_nullable_to_non_nullable
              as List<MindMap>?,
      memoryTricks: freezed == memoryTricks
          ? _value.memoryTricks
          : memoryTricks // ignore: cast_nullable_to_non_nullable
              as List<MemoryTrickModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonModelImplCopyWith<$Res>
    implements $LessonModelCopyWith<$Res> {
  factory _$$LessonModelImplCopyWith(
          _$LessonModelImpl value, $Res Function(_$LessonModelImpl) then) =
      __$$LessonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<String>? externalLinks,
      List<String>? topics,
      List<MindMap>? mindMaps,
      List<MemoryTrickModel>? memoryTricks});
}

/// @nodoc
class __$$LessonModelImplCopyWithImpl<$Res>
    extends _$LessonModelCopyWithImpl<$Res, _$LessonModelImpl>
    implements _$$LessonModelImplCopyWith<$Res> {
  __$$LessonModelImplCopyWithImpl(
      _$LessonModelImpl _value, $Res Function(_$LessonModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? externalLinks = freezed,
    Object? topics = freezed,
    Object? mindMaps = freezed,
    Object? memoryTricks = freezed,
  }) {
    return _then(_$LessonModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalLinks: freezed == externalLinks
          ? _value._externalLinks
          : externalLinks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mindMaps: freezed == mindMaps
          ? _value._mindMaps
          : mindMaps // ignore: cast_nullable_to_non_nullable
              as List<MindMap>?,
      memoryTricks: freezed == memoryTricks
          ? _value._memoryTricks
          : memoryTricks // ignore: cast_nullable_to_non_nullable
              as List<MemoryTrickModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonModelImpl implements _LessonModel {
  const _$LessonModelImpl(
      {required this.title,
      required this.description,
      final List<String>? externalLinks,
      final List<String>? topics,
      final List<MindMap>? mindMaps,
      final List<MemoryTrickModel>? memoryTricks})
      : _externalLinks = externalLinks,
        _topics = topics,
        _mindMaps = mindMaps,
        _memoryTricks = memoryTricks;

  factory _$LessonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  final List<String>? _externalLinks;
  @override
  List<String>? get externalLinks {
    final value = _externalLinks;
    if (value == null) return null;
    if (_externalLinks is EqualUnmodifiableListView) return _externalLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _topics;
  @override
  List<String>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MindMap>? _mindMaps;
  @override
  List<MindMap>? get mindMaps {
    final value = _mindMaps;
    if (value == null) return null;
    if (_mindMaps is EqualUnmodifiableListView) return _mindMaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MemoryTrickModel>? _memoryTricks;
  @override
  List<MemoryTrickModel>? get memoryTricks {
    final value = _memoryTricks;
    if (value == null) return null;
    if (_memoryTricks is EqualUnmodifiableListView) return _memoryTricks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LessonModel(title: $title, description: $description, externalLinks: $externalLinks, topics: $topics, mindMaps: $mindMaps, memoryTricks: $memoryTricks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._externalLinks, _externalLinks) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality().equals(other._mindMaps, _mindMaps) &&
            const DeepCollectionEquality()
                .equals(other._memoryTricks, _memoryTricks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_externalLinks),
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_mindMaps),
      const DeepCollectionEquality().hash(_memoryTricks));

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonModelImplCopyWith<_$LessonModelImpl> get copyWith =>
      __$$LessonModelImplCopyWithImpl<_$LessonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonModelImplToJson(
      this,
    );
  }
}

abstract class _LessonModel implements LessonModel {
  const factory _LessonModel(
      {required final String title,
      required final String description,
      final List<String>? externalLinks,
      final List<String>? topics,
      final List<MindMap>? mindMaps,
      final List<MemoryTrickModel>? memoryTricks}) = _$LessonModelImpl;

  factory _LessonModel.fromJson(Map<String, dynamic> json) =
      _$LessonModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<String>? get externalLinks;
  @override
  List<String>? get topics;
  @override
  List<MindMap>? get mindMaps;
  @override
  List<MemoryTrickModel>? get memoryTricks;

  /// Create a copy of LessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonModelImplCopyWith<_$LessonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
