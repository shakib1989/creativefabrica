// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetRoverPhotoEntityCollection on Isar {
  IsarCollection<RoverPhotoEntity> get roverPhotos => this.collection();
}

const RoverPhotoEntitySchema = CollectionSchema(
  name: r'RoverPhoto',
  id: 5422659938504592053,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.string,
    ),
    r'updatedDateTime': PropertySchema(
      id: 1,
      name: r'updatedDateTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _roverPhotoEntityEstimateSize,
  serialize: _roverPhotoEntitySerialize,
  deserialize: _roverPhotoEntityDeserialize,
  deserializeProp: _roverPhotoEntityDeserializeProp,
  idName: r'tempId',
  indexes: {
    r'id': IndexSchema(
      id: -3268401673993471357,
      name: r'id',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _roverPhotoEntityGetId,
  getLinks: _roverPhotoEntityGetLinks,
  attach: _roverPhotoEntityAttach,
  version: '3.0.5',
);

int _roverPhotoEntityEstimateSize(
  RoverPhotoEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.id.length * 3;
  return bytesCount;
}

void _roverPhotoEntitySerialize(
  RoverPhotoEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.id);
  writer.writeDateTime(offsets[1], object.updatedDateTime);
}

RoverPhotoEntity _roverPhotoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RoverPhotoEntity(
    id: reader.readStringOrNull(offsets[0]) ?? '',
  );
  object.tempId = id;
  object.updatedDateTime = reader.readDateTime(offsets[1]);
  return object;
}

P _roverPhotoEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _roverPhotoEntityGetId(RoverPhotoEntity object) {
  return object.tempId;
}

List<IsarLinkBase<dynamic>> _roverPhotoEntityGetLinks(RoverPhotoEntity object) {
  return [];
}

void _roverPhotoEntityAttach(
    IsarCollection<dynamic> col, Id id, RoverPhotoEntity object) {
  object.tempId = id;
}

extension RoverPhotoEntityByIndex on IsarCollection<RoverPhotoEntity> {
  Future<RoverPhotoEntity?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  RoverPhotoEntity? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<RoverPhotoEntity?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<RoverPhotoEntity?> getAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(RoverPhotoEntity object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(RoverPhotoEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<RoverPhotoEntity> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<RoverPhotoEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension RoverPhotoEntityQueryWhereSort
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QWhere> {
  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhere> anyTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RoverPhotoEntityQueryWhere
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QWhereClause> {
  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhereClause>
      tempIdEqualTo(Id tempId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: tempId,
        upper: tempId,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhereClause>
      tempIdNotEqualTo(Id tempId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhereClause>
      tempIdGreaterThan(Id tempId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: tempId, includeLower: include),
      );
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhereClause>
      tempIdLessThan(Id tempId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: tempId, includeUpper: include),
      );
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhereClause>
      tempIdBetween(
    Id lowerTempId,
    Id upperTempId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerTempId,
        includeLower: includeLower,
        upper: upperTempId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhereClause> idEqualTo(
      String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhereClause>
      idNotEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ));
      }
    });
  }
}

extension RoverPhotoEntityQueryFilter
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QFilterCondition> {
  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      tempIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tempId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      tempIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tempId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      tempIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tempId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      tempIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tempId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      updatedDateTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      updatedDateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      updatedDateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterFilterCondition>
      updatedDateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RoverPhotoEntityQueryObject
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QFilterCondition> {}

extension RoverPhotoEntityQueryLinks
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QFilterCondition> {}

extension RoverPhotoEntityQuerySortBy
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QSortBy> {
  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy>
      sortByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy>
      sortByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }
}

extension RoverPhotoEntityQuerySortThenBy
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QSortThenBy> {
  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy>
      thenByTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.asc);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy>
      thenByTempIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.desc);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy>
      thenByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterSortBy>
      thenByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }
}

extension RoverPhotoEntityQueryWhereDistinct
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QDistinct> {
  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QDistinct>
      distinctByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedDateTime');
    });
  }
}

extension RoverPhotoEntityQueryProperty
    on QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QQueryProperty> {
  QueryBuilder<RoverPhotoEntity, int, QQueryOperations> tempIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempId');
    });
  }

  QueryBuilder<RoverPhotoEntity, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RoverPhotoEntity, DateTime, QQueryOperations>
      updatedDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedDateTime');
    });
  }
}
