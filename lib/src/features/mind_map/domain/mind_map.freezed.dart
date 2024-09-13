// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mind_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MindMapNode _$MindMapNodeFromJson(Map<String, dynamic> json) {
  return _MindMapNode.fromJson(json);
}

/// @nodoc
mixin _$MindMapNode {
  String get name => throw _privateConstructorUsedError;
  List<MindMapNode> get children => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get excerpt => throw _privateConstructorUsedError;

  /// Serializes this MindMapNode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MindMapNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MindMapNodeCopyWith<MindMapNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MindMapNodeCopyWith<$Res> {
  factory $MindMapNodeCopyWith(
          MindMapNode value, $Res Function(MindMapNode) then) =
      _$MindMapNodeCopyWithImpl<$Res, MindMapNode>;
  @useResult
  $Res call(
      {String name,
      List<MindMapNode> children,
      String? description,
      String? image,
      String? excerpt});
}

/// @nodoc
class _$MindMapNodeCopyWithImpl<$Res, $Val extends MindMapNode>
    implements $MindMapNodeCopyWith<$Res> {
  _$MindMapNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MindMapNode
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
              as List<MindMapNode>,
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
abstract class _$$MindMapNodeImplCopyWith<$Res>
    implements $MindMapNodeCopyWith<$Res> {
  factory _$$MindMapNodeImplCopyWith(
          _$MindMapNodeImpl value, $Res Function(_$MindMapNodeImpl) then) =
      __$$MindMapNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<MindMapNode> children,
      String? description,
      String? image,
      String? excerpt});
}

/// @nodoc
class __$$MindMapNodeImplCopyWithImpl<$Res>
    extends _$MindMapNodeCopyWithImpl<$Res, _$MindMapNodeImpl>
    implements _$$MindMapNodeImplCopyWith<$Res> {
  __$$MindMapNodeImplCopyWithImpl(
      _$MindMapNodeImpl _value, $Res Function(_$MindMapNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MindMapNode
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
    return _then(_$MindMapNodeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<MindMapNode>,
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
class _$MindMapNodeImpl implements _MindMapNode {
  const _$MindMapNodeImpl(
      {required this.name,
      required final List<MindMapNode> children,
      this.description,
      this.image,
      this.excerpt})
      : _children = children;

  factory _$MindMapNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MindMapNodeImplFromJson(json);

  @override
  final String name;
  final List<MindMapNode> _children;
  @override
  List<MindMapNode> get children {
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
    return 'MindMapNode(name: $name, children: $children, description: $description, image: $image, excerpt: $excerpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MindMapNodeImpl &&
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

  /// Create a copy of MindMapNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MindMapNodeImplCopyWith<_$MindMapNodeImpl> get copyWith =>
      __$$MindMapNodeImplCopyWithImpl<_$MindMapNodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MindMapNodeImplToJson(
      this,
    );
  }
}

abstract class _MindMapNode implements MindMapNode {
  const factory _MindMapNode(
      {required final String name,
      required final List<MindMapNode> children,
      final String? description,
      final String? image,
      final String? excerpt}) = _$MindMapNodeImpl;

  factory _MindMapNode.fromJson(Map<String, dynamic> json) =
      _$MindMapNodeImpl.fromJson;

  @override
  String get name;
  @override
  List<MindMapNode> get children;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get excerpt;

  /// Create a copy of MindMapNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MindMapNodeImplCopyWith<_$MindMapNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MindMap _$MindMapFromJson(Map<String, dynamic> json) {
  return _MindMap.fromJson(json);
}

/// @nodoc
mixin _$MindMap {
  String get name => throw _privateConstructorUsedError;
  MindMapNode get rootNode => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;

  /// Serializes this MindMap to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MindMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MindMapCopyWith<MindMap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MindMapCopyWith<$Res> {
  factory $MindMapCopyWith(MindMap value, $Res Function(MindMap) then) =
      _$MindMapCopyWithImpl<$Res, MindMap>;
  @useResult
  $Res call({String name, MindMapNode rootNode, String? caption});

  $MindMapNodeCopyWith<$Res> get rootNode;
}

/// @nodoc
class _$MindMapCopyWithImpl<$Res, $Val extends MindMap>
    implements $MindMapCopyWith<$Res> {
  _$MindMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MindMap
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
              as MindMapNode,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MindMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MindMapNodeCopyWith<$Res> get rootNode {
    return $MindMapNodeCopyWith<$Res>(_value.rootNode, (value) {
      return _then(_value.copyWith(rootNode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MindMapImplCopyWith<$Res> implements $MindMapCopyWith<$Res> {
  factory _$$MindMapImplCopyWith(
          _$MindMapImpl value, $Res Function(_$MindMapImpl) then) =
      __$$MindMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, MindMapNode rootNode, String? caption});

  @override
  $MindMapNodeCopyWith<$Res> get rootNode;
}

/// @nodoc
class __$$MindMapImplCopyWithImpl<$Res>
    extends _$MindMapCopyWithImpl<$Res, _$MindMapImpl>
    implements _$$MindMapImplCopyWith<$Res> {
  __$$MindMapImplCopyWithImpl(
      _$MindMapImpl _value, $Res Function(_$MindMapImpl) _then)
      : super(_value, _then);

  /// Create a copy of MindMap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rootNode = null,
    Object? caption = freezed,
  }) {
    return _then(_$MindMapImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rootNode: null == rootNode
          ? _value.rootNode
          : rootNode // ignore: cast_nullable_to_non_nullable
              as MindMapNode,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MindMapImpl implements _MindMap {
  const _$MindMapImpl(
      {required this.name, required this.rootNode, this.caption});

  factory _$MindMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$MindMapImplFromJson(json);

  @override
  final String name;
  @override
  final MindMapNode rootNode;
  @override
  final String? caption;

  @override
  String toString() {
    return 'MindMap(name: $name, rootNode: $rootNode, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MindMapImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rootNode, rootNode) ||
                other.rootNode == rootNode) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, rootNode, caption);

  /// Create a copy of MindMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MindMapImplCopyWith<_$MindMapImpl> get copyWith =>
      __$$MindMapImplCopyWithImpl<_$MindMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MindMapImplToJson(
      this,
    );
  }
}

abstract class _MindMap implements MindMap {
  const factory _MindMap(
      {required final String name,
      required final MindMapNode rootNode,
      final String? caption}) = _$MindMapImpl;

  factory _MindMap.fromJson(Map<String, dynamic> json) = _$MindMapImpl.fromJson;

  @override
  String get name;
  @override
  MindMapNode get rootNode;
  @override
  String? get caption;

  /// Create a copy of MindMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MindMapImplCopyWith<_$MindMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
