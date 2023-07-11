import 'package:flutter/material.dart';

abstract class SnackBarUtils {
  static final key = GlobalKey<ScaffoldMessengerState>();

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>?
      showSnackBar(SnackBar snackBar) =>
          key.currentState?.showSnackBar(snackBar);

}
