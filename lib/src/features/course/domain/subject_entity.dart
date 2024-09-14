import 'unit_entity.dart';

class SubjectEntity {
  final String name;
  final String imageUrl;
  final List<UnitEntity> units;

  SubjectEntity(
    this.name,
    this.imageUrl,
    this.units,
  );
}
