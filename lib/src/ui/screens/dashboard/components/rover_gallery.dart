import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:creativefabrica/assets/image_assets.dart';
import 'package:creativefabrica/l10n/l10n.dart';
import 'package:creativefabrica/src/constants/app_dimens.dart';
import 'package:creativefabrica/src/ui/screens/dashboard/bloc/rover_gallery_cubit.dart';
import 'package:creativefabrica/src/utils/internet_utils.dart';
import 'package:creativefabrica/styles/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:styles/constants/exports.dart';
import 'package:styles/styles.dart';

import '../../image/image_screen.dart';

class RoverGallery extends StatefulWidget {
  final ScrollController controller;

  const RoverGallery({
    super.key,
    required this.controller,
  });

  @override
  State<RoverGallery> createState() => _RoverGalleryState();
}

class _RoverGalleryState extends State<RoverGallery> {
  StreamSubscription<ConnectivityResult>? subscription;
  bool previousInternet = false;
  bool hasInternet = false;
  bool checkingInternet = false;

  @override
  void initState() {
    super.initState();
    context.read<RoverGalleryCubit>().initial();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      internetCheck();
    });
  }

  Future<void> internetCheck() async {
    if (checkingInternet) return;
    checkingInternet = true;
    final status = await InternetUtils.isInternetConnected();
    if (!hasInternet && status) {
      setState(() {
        previousInternet = hasInternet;
        hasInternet = status;
      });
    } else if (hasInternet && !status) {
      setState(() {
        previousInternet = hasInternet;
        hasInternet = status;
      });
    }
    checkingInternet = false;
  }

// Be sure to cancel subscription after you are done
  @override
  dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoverGalleryCubit, RoverGalleryState>(
        buildWhen: (prev, current) {
      if (previousInternet != hasInternet && hasInternet) {
        return true;
      }
      if (current.phase == RoverGalleryPhase.loading &&
          prev.gallery.isNotEmpty) {
        return false;
      }
      final set = {};

      for (var data in prev.gallery) {
        set.putIfAbsent(data, () => data);
      }

      for (var data in current.gallery) {
        if (!set.containsKey(data)) {
          return true;
        }
      }
      return false;
    }, builder: (context, state) {
      if (state.gallery.isEmpty) {
        return _buildEmpty(state);
      }
      previousInternet = hasInternet;
      return _buildMasonryGridView(state);
    });
  }

  Widget _buildEmpty(RoverGalleryState state) {
    Widget centerWidget = SizedBox.shrink();
    if (state.phase == RoverGalleryPhase.loading) {
      centerWidget = Loading.onPrimary(context);
    } else if (state.phase == RoverGalleryPhase.error) {
      centerWidget = ThemeTexts.error.labelMedium(
        context: context,
        text: context.l10n.dashboardPleaseRefreshTryAgain,
      );
    }

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: AppDimens.dashboardErrorTopSpacing,
        left: StyleDimens.screenEdgeWidthOffset,
        right: StyleDimens.screenEdgeWidthOffset,
        bottom: StyleDimens.screenEdgeHeightOffset,
      ),
      child: centerWidget,
    );
  }

  MasonryGridView _buildMasonryGridView(RoverGalleryState state) {
    int count = 375.w ~/ (375 ~/ 3);
    return MasonryGridView.count(
      shrinkWrap: true,
      crossAxisCount: count,
      itemCount: state.gallery.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            ImageScreen.navigate(
              context,
              imageUrl: state.gallery[index],
            );
          },
          child: Card(
            child: Hero(
              tag: state.gallery[index],
              child: CachedNetworkImage(
                imageUrl: state.gallery[index],
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Loading(),
                errorWidget: (context, url, error) {
                  internetCheck();
                  return Image.asset(
                    ImageAssets.noImageFound,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
