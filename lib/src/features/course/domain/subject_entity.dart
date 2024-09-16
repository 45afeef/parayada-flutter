import 'unit_entity.dart';

class SubjectEntity {
  final String name;
  final String imageUrl;

  /// Why this [units] list can be null.
  /// Becasue there may be a sencario where the [units] list is not fetched form the remote db
  /// In such cases irrespective of if the [units] list is empty or not we can't determine the data.
  /// Feels like the best approch (at this time) is to make the [units] list nullable so We can make sure that
  /// we don't communicate with the remote db yet. other wise this will be at least an empty list.
  final List<UnitEntity>? units;

  SubjectEntity(
    this.name, {
    required this.imageUrl,
    this.units,
  });
}
