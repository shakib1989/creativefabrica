import 'package:isar/isar.dart';

import 'base_nosql_entity.dart';
import 'db_constants.dart';

class BaseNoSqlSingletonEntity extends BaseNoSqlEntity {
  @override
  Id tempId = DbConstants.singletonId;
}
