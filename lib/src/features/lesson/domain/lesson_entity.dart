import 'package:json_annotation/json_annotation.dart';

import '../../mind_map/domain/mind_map.dart';

@JsonSerializable(explicitToJson: true)
class Lesson {
  final String title;
  final String description;
  final List<String>? externalLinks;
  final List<String>? topics; //List<Topic>
  final List<MindMap>? mindMaps;
  final List<String>? memoryTricks; // List<Assessment> assessments;

  Lesson({
    required this.title,
    required this.description,
    this.externalLinks,
    this.topics,
    this.mindMaps,
    this.memoryTricks,
  });
}
