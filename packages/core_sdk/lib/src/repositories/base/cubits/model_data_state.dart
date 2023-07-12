import '../../../models/models.dart';

class ModelDataState<T> {
  final Optional<T> dataOption;

  ModelDataState(this.dataOption);
}

class InitialModelDataState<T> extends ModelDataState<T> {
  InitialModelDataState(Optional<T> dataOption) : super(dataOption);
}

class ModelDataUpdatedState<T> extends ModelDataState<T> {
  ModelDataUpdatedState(Optional<T> dataOption) : super(dataOption);
}
