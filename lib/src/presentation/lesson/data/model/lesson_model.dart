import 'package:json_annotation/json_annotation.dart';

part 'lesson_model.g.dart'; // This file is generated by running 'flutter pub run build_runner build'

@JsonSerializable(explicitToJson: true)
class Lesson {
  final String title;
  final String description;
  final List<String>? topics; //List<Topic>

  final List<String>? memoryTricks; // List<Assessment> assessments;

  Lesson({
    required this.title,
    required this.description,
    this.topics,
    this.memoryTricks,
  });
}
