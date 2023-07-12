import 'package:bloc/bloc.dart';
import 'package:core_sdk/data/network/default_imports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_state.dart';
part 'app_config.freezed.dart';

class AppConfigCubit extends Cubit<AppConfigState> {
  AppConfigCubit() : super(AppConfigState.empty());


}
