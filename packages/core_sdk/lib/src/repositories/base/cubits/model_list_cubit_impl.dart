import 'dart:async';

import '../../../models/models.dart';
import 'model_cubit.dart';
import 'model_data_state.dart';

class ModelListCubitImpl<Model, Entity> extends ModelCubit<Model> {
  late final Stream<Entity?> _stream;
  StreamSubscription? subscription;

  Optional<Model> Function(Entity? entity) convertToModel;

  ModelListCubitImpl({
    required Stream<Entity?> stream,
    required this.convertToModel,
  }) : super(InitialModelDataState(Optional.empty<Model>())) {
    _stream = stream;
    init();
  }

  void init() {
    subscription = _stream.listen((data) {
      final optionalData = convertToModel(data);
      emit(InitialModelDataState(optionalData));
    });
  }

  @override
  Future<void> dispose() async {
    subscription?.cancel();
  }
}
