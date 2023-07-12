import 'dart:convert';

import 'package:core_sdk/config/env_modes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../bootstrap.dart';
import '../src/app/application.dart';

abstract class Env {
  Env() {
    shared = this;
    init();
  }
  static late Env shared;
  String configFileLocation = "assets/env/env.json";
  bool useMockApi = false;
  abstract String networkBaseUrl;

  Future<void> init() async {

    WidgetsFlutterBinding.ensureInitialized();
    Paint.enableDithering = true;
    startApp();
  }

  Future<void> startApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    Paint.enableDithering = true;
    await Firebase.initializeApp();

    bootstrap(() => const Application());
  }
}
