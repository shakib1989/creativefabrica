import 'package:flutter_bloc/flutter_bloc.dart';

import 'model_data_state.dart';

class ModelCubit<Model> extends Cubit<ModelDataState<Model>> {
  ModelCubit(super.initialState);
}
