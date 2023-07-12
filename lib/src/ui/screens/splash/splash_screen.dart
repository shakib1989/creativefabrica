import 'package:creativefabrica/assets/image_assets.dart';
import 'package:creativefabrica/l10n/l10n.dart';
import 'package:creativefabrica/src/app/init/exports.dart';
import 'package:creativefabrica/src/constants/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styles/constants/style_dimens.dart';
import 'package:styles/styles.dart';

import 'components/init_status_viewer.dart';
import 'components/splash_top_area.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController addToCartPopUpAnimationController;
  ImageProvider logo = const AssetImage(ImageAssets.splashBackground);
  @override
  void initState() {
    super.initState();
    addToCartPopUpAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3500));

    InitManagerCubit.shared.run();
    addToCartPopUpAnimationController.forward();
  }

  @override
  void dispose() {
    addToCartPopUpAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      background: _buildBackground(),
      body: Column(
        children: [
          SplashTopArea(),
          Expanded(child: SizedBox.shrink()),
          InitStatusViewer(),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const SizedBox.expand(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffA29D89),
                  Color(0xffAAA592),
                  Color(0xffB4AEA0),
                  Color(0xffBBB8A7),
                  Color(0xffC2BCAC),
                ],
                stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.topRight,
                tileMode: TileMode.repeated,
              ),
            ),
          ),
        ),
        _buildRover(),
      ],
    );
  }

  Widget _buildRover() {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(addToCartPopUpAnimationController),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Wrap(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Image(
                image: logo!,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
