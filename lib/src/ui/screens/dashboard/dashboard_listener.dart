import 'package:creativefabrica/src/ui/screens/dashboard/bloc/rover_gallery_cubit.dart';
import 'package:creativefabrica/src/utils/internet_utils.dart';
import 'package:creativefabrica/styles/loading.dart';
import 'package:creativefabrica/styles/snack_bars/error_text_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styles/styles.dart';

class DashboardListener {
  RoverGalleryState? previousState;

  void listen(BuildContext context, RoverGalleryState state) {
    if (previousState?.phase == RoverGalleryPhase.loading) {
      Navigator.of(context).pop();
    }
    if (state.phase == RoverGalleryPhase.loading) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Loading(),
                ],
              ),
            );
          });
    }
    if (state.phase == RoverGalleryPhase.noInternet) {
      _handleNoInternet(context);
    } else if (state.phase == RoverGalleryPhase.error) {
      SnackBarUtils.showSnackBar(ErrorTextSnackBar(
        message: state.failure.message,
      ));
    }
    previousState = state;
  }

  Future<void> _handleNoInternet(BuildContext context) async {
    final retry = await InternetUtils.showNoInternetConnectionDialog(
      cancelable: true,
    );
    if (retry) {
      context.read<RoverGalleryCubit>().refresh();
    } else {
      context.read<RoverGalleryCubit>().reset();
    }
  }
}
