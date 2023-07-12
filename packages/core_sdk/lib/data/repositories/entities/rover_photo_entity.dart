part of 'entities.dart';

@Collection(accessor: 'roverPhotos')
@Name('RoverPhoto')
class RoverPhotoEntity extends BaseNoSqlEntity {
  @Index(unique: true, replace: true, caseSensitive: false)
  String id;

  RoverPhotoEntity({
    this.id = '',
  });
}
