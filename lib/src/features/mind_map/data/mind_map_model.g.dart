// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mind_map_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MindMapNodeModelImpl _$$MindMapNodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MindMapNodeModelImpl(
      name: json['name'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => MindMapNodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      image: json['image'] as String?,
      excerpt: json['excerpt'] as String?,
    );

Map<String, dynamic> _$$MindMapNodeModelImplToJson(
        _$MindMapNodeModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'children': instance.children,
      'description': instance.description,
      'image': instance.image,
      'excerpt': instance.excerpt,
    };

_$MindMapModelImpl _$$MindMapModelImplFromJson(Map<String, dynamic> json) =>
    _$MindMapModelImpl(
      name: json['name'] as String,
      rootNode:
          MindMapNodeModel.fromJson(json['rootNode'] as Map<String, dynamic>),
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$$MindMapModelImplToJson(_$MindMapModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rootNode': instance.rootNode,
      'caption': instance.caption,
    };
