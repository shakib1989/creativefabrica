import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

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
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    startApp();
  }

  Future<void> startApp() async {
    await Firebase.initializeApp();
    bootstrap(() => const Application());
  }
}
