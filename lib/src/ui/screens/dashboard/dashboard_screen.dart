import 'package:creativefabrica/l10n/l10n.dart';
import 'package:creativefabrica/src/ui/screens/dashboard/bloc/rover_gallery_cubit.dart';
import 'package:creativefabrica/src/ui/screens/dashboard/components/rover_gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styles/constants/exports.dart';
import 'package:styles/styles.dart';

import 'dashboard_listener.dart';

class DashboardScreen extends StatelessWidget {
  final DashboardListener listener = DashboardListener();

  static Future<void> navigate(
    BuildContext context, {
    bool replace = false,
  }) async {
    final route = MaterialPageRoute(builder: (_) => DashboardScreen());
    if (replace) {
      await Navigator.of(context, rootNavigator: true).pushReplacement(route);
    } else {
      await Navigator.of(context, rootNavigator: true).push(route);
    }
  }

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return BlocProvider(
      create: (BuildContext context) {
        return RoverGalleryCubit();
      },
      child: BlocListener<RoverGalleryCubit, RoverGalleryState>(
        listener: listener.listen,
        child: const DashboardContent(),
      ),
    );
  }
}

class DashboardContent extends StatefulWidget {
  const DashboardContent({super.key});

  @override
  State<DashboardContent> createState() => _DashboardContentState();
}

class _DashboardContentState extends State<DashboardContent> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Screen(
      allowBack: false,
      appBar: AppBar(
        title: Text(context.l10n.appName),
        actions: [
          IconButton(
            onPressed: () {
              context.read<RoverGalleryCubit>().refresh();
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          RoverGallery(controller: scrollController),
          BlocBuilder<RoverGalleryCubit, RoverGalleryState>(
            builder: (context, state) {
              if (!state.apiDataFetched &&
                  state.phase == RoverGalleryPhase.completed) {
                return _buildOldDataText(context);
              }
              return SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  Container _buildOldDataText(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(StyleDimens.screenEdgeWidthOffset),
      padding: EdgeInsets.all(StyleDimens.screenEdgeWidthOffset),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(0.8),
        borderRadius: BorderRadius.circular(StyleDimens.roundedCornerRadius),
      ),
      child: ThemeTexts.onBackground.labelLarge(
        context: context,
        text: context.l10n.dashboardOldData,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
