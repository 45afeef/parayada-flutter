// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mind_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MindMapNode _$MindMapNodeFromJson(Map<String, dynamic> json) => MindMapNode(
      name: json['name'] as String,
      description: json['description'] as String?,
      image: json['image'] as String?,
      excerpt: json['excerpt'] as String?,
      connectedNodes: (json['connectedNodes'] as List<dynamic>)
          .map((e) => MindMapNode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MindMapNodeToJson(MindMapNode instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'excerpt': instance.excerpt,
      'connectedNodes': instance.connectedNodes.map((e) => e.toJson()).toList(),
    };

MindMap _$MindMapFromJson(Map<String, dynamic> json) => MindMap(
      name: json['name'] as String,
      caption: json['caption'] as String?,
      rootNode: MindMapNode.fromJson(json['rootNode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MindMapToJson(MindMap instance) => <String, dynamic>{
      'name': instance.name,
      'caption': instance.caption,
      'rootNode': instance.rootNode.toJson(),
    };
