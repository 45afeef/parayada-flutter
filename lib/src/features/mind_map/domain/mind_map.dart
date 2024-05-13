import 'package:json_annotation/json_annotation.dart';

part 'mind_map.g.dart'; // This file is generated by running 'flutter pub run build_runner build'

@JsonSerializable(explicitToJson: true)
class MindMapNode {
  String name;
  String? description;
  String? image;
  String? excerpt;
  List<MindMapNode> connectedNodes;

  MindMapNode({
    required this.name,
    this.description,
    this.image,
    this.excerpt,
    required this.connectedNodes,
  });



  // A factory constructor that initializes an instance from a JSON map.
  factory MindMapNode.fromJson(Map<String, dynamic> json) =>
      _$MindMapNodeFromJson(json);

  // A method that converts an instance to a JSON map.
  Map<String, dynamic> toJson() => _$MindMapNodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MindMap {
  String name;
  String? caption;
  MindMapNode rootNode;

  MindMap({
    required this.name,
    this.caption,
    required this.rootNode,
  });

  factory MindMap.fromJson(Map<String, dynamic> json) =>
      _$MindMapFromJson(json);

  Map<String, dynamic> toJson() => _$MindMapToJson(this);
}