// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mind_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MindMapNodeImpl _$$MindMapNodeImplFromJson(Map<String, dynamic> json) =>
    _$MindMapNodeImpl(
      name: json['name'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => MindMapNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      image: json['image'] as String?,
      excerpt: json['excerpt'] as String?,
    );

Map<String, dynamic> _$$MindMapNodeImplToJson(_$MindMapNodeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'children': instance.children,
      'description': instance.description,
      'image': instance.image,
      'excerpt': instance.excerpt,
    };

_$MindMapImpl _$$MindMapImplFromJson(Map<String, dynamic> json) =>
    _$MindMapImpl(
      name: json['name'] as String,
      rootNode: MindMapNode.fromJson(json['rootNode'] as Map<String, dynamic>),
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$$MindMapImplToJson(_$MindMapImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rootNode': instance.rootNode,
      'caption': instance.caption,
    };
