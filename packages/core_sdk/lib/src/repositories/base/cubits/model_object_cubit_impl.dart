import 'dart:async';

import 'package:core_sdk/exports.dart';

import 'model_cubit.dart';
import 'model_data_state.dart';

class ModelObjectCubitImpl<Model, Entity> extends ModelCubit<Model> {
  late final Stream<List<Entity>?> _stream;
  StreamSubscription? subscription;

  Optional<Model> Function(Entity? entity) convertToModel;

  ModelObjectCubitImpl({
    required Stream<List<Entity>?> stream,
    required this.convertToModel,
  }) : super(InitialModelDataState(Optional.empty<Model>())) {
    _stream = stream;
    init();
  }

  void init() {
    subscription = _stream.listen((data) {
      final optionalData = (data == null || data.length == 0)
          ? Optional.empty<Model>()
          : convertToModel(data[0]);
      emit(
        InitialModelDataState(optionalData),
      );
    });
  }

  @override
  Future<void> dispose() async {
    subscription?.cancel();
  }
}
