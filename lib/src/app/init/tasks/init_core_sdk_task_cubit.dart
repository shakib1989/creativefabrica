import 'dart:convert';

import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/data/config/network_config.dart';
import 'package:creativefabrica/env/env.dart';
import 'package:flutter/services.dart';

import '../init_phase.dart';
import 'base_task_cubit.dart';

class InitCoreSdkTaskCubit extends BaseTaskCubit {
  @override
  Future<void> doWork() async {
    try {
      await CoreSdk.initialize(
          networkConfig: NetworkConfig(
        baseUrl: Env.shared.networkBaseUrl,
        apiKey: await _getNasaApiKey(),
        useMock: Env.shared.useMockApi,
      ));

      Future.delayed(const Duration(milliseconds: 10), () {
        emit(
          state.copyWith(phase: InitPhase.completed),
        );
      });
    } on Exception catch (e) {
      Future.delayed(const Duration(milliseconds: 10), () {
        emit(
          state.copyWith(
            phase: InitPhase.error,
            message: e.toString(),
          ),
        );
      });
    }
  }

  Future<String> _getNasaApiKey() async {
    final config = await getJsonEnvConfig();

    if (config.containsKey('nasa')) {
      final nasaData = config['nasa'];
      if (nasaData is Map && nasaData.containsKey('apiKey')) {
        final apiKey = nasaData['apiKey'];
        if (apiKey is String) {
          return apiKey;
        }
      }
    }

    throw Exception('Invalid Config at : ${Env.shared.configFileLocation}');
  }

  Future<Map<String, dynamic>> getJsonEnvConfig() async {
    return rootBundle
        .loadString(Env.shared.configFileLocation)
        .then((jsonStr) => jsonDecode(jsonStr));
  }
}
