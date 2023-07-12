import 'dart:io';

import 'package:creativefabrica/src/utils/context_holder.dart';
import 'package:creativefabrica/styles/dialogs/turn_on_internet_dialog.dart';
import 'package:flutter/material.dart';

class InternetUtils {
  static const String _lookUpAddress = 'google.com';

  static Future<bool> isInternetConnected() async {
    try {
      final result = await InternetAddress.lookup(_lookUpAddress);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {}
    return false;
  }

  static Future<bool> showNoInternetConnectionDialog({bool cancelable = false}) async {
    return await showDialog<bool>(
          context: ContextHolder.currentContext,
          builder: (context) {
            return TurnOnInternetDialog(
              cancelable: cancelable,
              onRetry: () async {
                if(await InternetUtils.isInternetConnected()){
                  Navigator.of(context).pop<bool>(true);
                }
              },
              onCancel: () async {
                Navigator.of(context).pop<bool>(false);
              },
            );
          },
        ) ??
        false;
  }
}
