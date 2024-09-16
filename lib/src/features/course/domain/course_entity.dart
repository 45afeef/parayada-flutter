import 'subject_entity.dart';

class CourseEntity {
  final String title;
  
  /// Why this [subjects] list can be null.
  /// Becasue there may be a sencario where the [subjects] list is not fetched form the remote db
  /// In such cases irrespective of if the [subjects] list is empty or not we can't determine the data.
  /// Feels like the best approch (at this time) is to make the [subjects] list nullable so We can make sure that 
  /// we don't communicate with the remote db yet. other wise this will be at least an empty list.
  final List<SubjectEntity>? subjects;

  CourseEntity(
    this.title, {
    this.subjects,
  });
}
