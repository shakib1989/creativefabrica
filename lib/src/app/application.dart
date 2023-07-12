import 'package:creativefabrica/assets/image_assets.dart';
import 'package:creativefabrica/l10n/l10n.dart';
import 'package:creativefabrica/src/ui/screens/splash/splash_screen.dart';
import 'package:creativefabrica/src/utils/context_holder.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:styles/styles.dart';

import 'config/app_config.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage(ImageAssets.splashBackground), context);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppConfigCubit()),
          ],
          child: MaterialApp(
            scaffoldMessengerKey: SnackBarUtils.key,
            navigatorKey: ContextHolder.navigatorKey,
            theme: FlexThemeData.light(scheme: FlexScheme.vesuviusBurn),
            //darkTheme: DarkTheme().data(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: child,
          ),
        );
      },
      child: const SplashScreen(),
    );
  }
}
