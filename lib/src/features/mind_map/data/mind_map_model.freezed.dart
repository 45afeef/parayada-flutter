// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mind_map_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MindMapNodeModel _$MindMapNodeModelFromJson(Map<String, dynamic> json) {
  return _MindMapNodeModel.fromJson(json);
}

/// @nodoc
mixin _$MindMapNodeModel {
  String get name => throw _privateConstructorUsedError;
  List<MindMapNodeModel> get children => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get excerpt => throw _privateConstructorUsedError;

  /// Serializes this MindMapNodeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MindMapNodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MindMapNodeModelCopyWith<MindMapNodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MindMapNodeModelCopyWith<$Res> {
  factory $MindMapNodeModelCopyWith(
          MindMapNodeModel value, $Res Function(MindMapNodeModel) then) =
      _$MindMapNodeModelCopyWithImpl<$Res, MindMapNodeModel>;
  @useResult
  $Res call(
      {String name,
      List<MindMapNodeModel> children,
      String? description,
      String? image,
      String? excerpt});
}

/// @nodoc
class _$MindMapNodeModelCopyWithImpl<$Res, $Val extends MindMapNodeModel>
    implements $MindMapNodeModelCopyWith<$Res> {
  _$MindMapNodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MindMapNodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? children = null,
    Object? description = freezed,
    Object? image = freezed,
    Object? excerpt = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<MindMapNodeModel>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MindMapNodeModelImplCopyWith<$Res>
    implements $MindMapNodeModelCopyWith<$Res> {
  factory _$$MindMapNodeModelImplCopyWith(_$MindMapNodeModelImpl value,
          $Res Function(_$MindMapNodeModelImpl) then) =
      __$$MindMapNodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<MindMapNodeModel> children,
      String? description,
      String? image,
      String? excerpt});
}

/// @nodoc
class __$$MindMapNodeModelImplCopyWithImpl<$Res>
    extends _$MindMapNodeModelCopyWithImpl<$Res, _$MindMapNodeModelImpl>
    implements _$$MindMapNodeModelImplCopyWith<$Res> {
  __$$MindMapNodeModelImplCopyWithImpl(_$MindMapNodeModelImpl _value,
      $Res Function(_$MindMapNodeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MindMapNodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? children = null,
    Object? description = freezed,
    Object? image = freezed,
    Object? excerpt = freezed,
  }) {
    return _then(_$MindMapNodeModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<MindMapNodeModel>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MindMapNodeModelImpl implements _MindMapNodeModel {
  const _$MindMapNodeModelImpl(
      {required this.name,
      required final List<MindMapNodeModel> children,
      this.description,
      this.image,
      this.excerpt})
      : _children = children;

  factory _$MindMapNodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MindMapNodeModelImplFromJson(json);

  @override
  final String name;
  final List<MindMapNodeModel> _children;
  @override
  List<MindMapNodeModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? excerpt;

  @override
  String toString() {
    return 'MindMapNodeModel(name: $name, children: $children, description: $description, image: $image, excerpt: $excerpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MindMapNodeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_children),
      description,
      image,
      excerpt);

  /// Create a copy of MindMapNodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MindMapNodeModelImplCopyWith<_$MindMapNodeModelImpl> get copyWith =>
      __$$MindMapNodeModelImplCopyWithImpl<_$MindMapNodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MindMapNodeModelImplToJson(
      this,
    );
  }
}

abstract class _MindMapNodeModel implements MindMapNodeModel {
  const factory _MindMapNodeModel(
      {required final String name,
      required final List<MindMapNodeModel> children,
      final String? description,
      final String? image,
      final String? excerpt}) = _$MindMapNodeModelImpl;

  factory _MindMapNodeModel.fromJson(Map<String, dynamic> json) =
      _$MindMapNodeModelImpl.fromJson;

  @override
  String get name;
  @override
  List<MindMapNodeModel> get children;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get excerpt;

  /// Create a copy of MindMapNodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MindMapNodeModelImplCopyWith<_$MindMapNodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MindMapModel _$MindMapModelFromJson(Map<String, dynamic> json) {
  return _MindMapModel.fromJson(json);
}

/// @nodoc
mixin _$MindMapModel {
  String get name => throw _privateConstructorUsedError;
  MindMapNodeModel get rootNode => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;

  /// Serializes this MindMapModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MindMapModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MindMapModelCopyWith<MindMapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MindMapModelCopyWith<$Res> {
  factory $MindMapModelCopyWith(
          MindMapModel value, $Res Function(MindMapModel) then) =
      _$MindMapModelCopyWithImpl<$Res, MindMapModel>;
  @useResult
  $Res call({String name, MindMapNodeModel rootNode, String? caption});

  $MindMapNodeModelCopyWith<$Res> get rootNode;
}

/// @nodoc
class _$MindMapModelCopyWithImpl<$Res, $Val extends MindMapModel>
    implements $MindMapModelCopyWith<$Res> {
  _$MindMapModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MindMapModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rootNode = null,
    Object? caption = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rootNode: null == rootNode
          ? _value.rootNode
          : rootNode // ignore: cast_nullable_to_non_nullable
              as MindMapNodeModel,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MindMapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MindMapNodeModelCopyWith<$Res> get rootNode {
    return $MindMapNodeModelCopyWith<$Res>(_value.rootNode, (value) {
      return _then(_value.copyWith(rootNode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MindMapModelImplCopyWith<$Res>
    implements $MindMapModelCopyWith<$Res> {
  factory _$$MindMapModelImplCopyWith(
          _$MindMapModelImpl value, $Res Function(_$MindMapModelImpl) then) =
      __$$MindMapModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, MindMapNodeModel rootNode, String? caption});

  @override
  $MindMapNodeModelCopyWith<$Res> get rootNode;
}

/// @nodoc
class __$$MindMapModelImplCopyWithImpl<$Res>
    extends _$MindMapModelCopyWithImpl<$Res, _$MindMapModelImpl>
    implements _$$MindMapModelImplCopyWith<$Res> {
  __$$MindMapModelImplCopyWithImpl(
      _$MindMapModelImpl _value, $Res Function(_$MindMapModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MindMapModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rootNode = null,
    Object? caption = freezed,
  }) {
    return _then(_$MindMapModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rootNode: null == rootNode
          ? _value.rootNode
          : rootNode // ignore: cast_nullable_to_non_nullable
              as MindMapNodeModel,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MindMapModelImpl implements _MindMapModel {
  const _$MindMapModelImpl(
      {required this.name, required this.rootNode, this.caption});

  factory _$MindMapModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MindMapModelImplFromJson(json);

  @override
  final String name;
  @override
  final MindMapNodeModel rootNode;
  @override
  final String? caption;

  @override
  String toString() {
    return 'MindMapModel(name: $name, rootNode: $rootNode, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MindMapModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rootNode, rootNode) ||
                other.rootNode == rootNode) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, rootNode, caption);

  /// Create a copy of MindMapModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MindMapModelImplCopyWith<_$MindMapModelImpl> get copyWith =>
      __$$MindMapModelImplCopyWithImpl<_$MindMapModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MindMapModelImplToJson(
      this,
    );
  }
}

abstract class _MindMapModel implements MindMapModel {
  const factory _MindMapModel(
      {required final String name,
      required final MindMapNodeModel rootNode,
      final String? caption}) = _$MindMapModelImpl;

  factory _MindMapModel.fromJson(Map<String, dynamic> json) =
      _$MindMapModelImpl.fromJson;

  @override
  String get name;
  @override
  MindMapNodeModel get rootNode;
  @override
  String? get caption;

  /// Create a copy of MindMapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MindMapModelImplCopyWith<_$MindMapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
