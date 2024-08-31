import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart'; // This file is generated by running 'flutter pub run build_runner build'

@JsonSerializable(explicitToJson: true)
class LessonModel {
  final String title;
  final String description;
  final List<String>? topics; //List<Topic>

  final List<String>? memoryTricks; // List<Assessment> assessments;

  LessonModel({
    required this.title,
    required this.description,
    this.topics,
    this.memoryTricks,
  });

  // A factory constructor that initializes an instance from a JSON map.
  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);

  // A method that converts an instance to a JSON map.
  Map<String, dynamic> toJson() => _$LessonModelToJson(this);
}
