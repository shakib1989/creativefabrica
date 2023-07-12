import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:styles/constants/exports.dart';

class Loading extends StatelessWidget {
  static Widget background(BuildContext context) {
    return Loading(
      color: Theme.of(context).colorScheme.background,
    );
  }

  static Widget onPrimary(BuildContext context) {
    return Loading(
      color: Theme.of(context).colorScheme.onPrimary,
    );
  }

  const Loading({Key? key, this.color}) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SpinKitSpinningLines(
      color: color ?? Theme.of(context).colorScheme.primary,
      size: StyleDimens.buttonHeight - 5,
    );
  }
}
