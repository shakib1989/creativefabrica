import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screen_foreground_cubit.dart';

class Screen extends StatefulWidget {
  final ScreenForegroundCubit? overlayController;

  final bool allowBack;
  final Widget? background;
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final List<Widget>? persistentFooterButtons;
  final AlignmentDirectional persistentFooterAlignment;

  final Widget? drawer;
  final Function(bool)? onDrawerChanged;
  final Widget? endDrawer;
  final Function(bool)? onEndDrawerChanged;
  final Widget? bottomNavigationBar;

  final Widget? bottomSheet;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final bool primary;
  final DragStartBehavior drawerDragStartBehavior;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final Color? drawerScrimColor;
  final double? drawerEdgeDragWidth;
  final bool drawerEnableOpenDragGesture;
  final bool endDrawerEnableOpenDragGesture;

  const Screen({
    Key? key,
    this.overlayController,
    this.allowBack = true,
    this.background,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.persistentFooterAlignment = AlignmentDirectional.centerEnd,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  late ScreenForegroundCubit overlayController;
  @override
  void initState() {
    super.initState();
    overlayController = widget.overlayController ?? ScreenForegroundCubit();
  }

  @override
  void dispose() {
    if( widget.overlayController ==null){
      overlayController.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: GestureDetector(
        onTap: () {


          SystemChannels.textInput.invokeMethod('TextInput.hide');
        },
        child: _buildContentBody(context),
      ),
      onWillPop: () async => widget.allowBack,
    );
  }

  Widget _buildContentBody(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: SafeArea(child: _buildBody(context)),
      floatingActionButton: widget.floatingActionButton,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      floatingActionButtonAnimator: widget.floatingActionButtonAnimator,
      persistentFooterButtons: widget.persistentFooterButtons,
      drawer: widget.drawer,
      onDrawerChanged: widget.onDrawerChanged,
      endDrawer: widget.endDrawer,
      onEndDrawerChanged: widget.onEndDrawerChanged,
      bottomNavigationBar: widget.bottomNavigationBar,
      bottomSheet: widget.bottomSheet,
      backgroundColor: (widget.background != null)
          ? Colors.transparent
          : widget.backgroundColor,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      primary: widget.primary,
      drawerDragStartBehavior: widget.drawerDragStartBehavior,
      extendBody: widget.extendBody,
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      drawerScrimColor: widget.drawerScrimColor,
      drawerEdgeDragWidth: widget.drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: widget.drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: widget.endDrawerEnableOpenDragGesture,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        if (widget.background != null) widget.background!,
        widget.body,
        _buildOverlay(context),
      ],
    );
  }

  Widget _buildOverlay(BuildContext context) {
    return BlocBuilder<ScreenForegroundCubit, ScreenForegroundState>(
        bloc: overlayController,
        builder: (context, state) {
          if (state.overlays.isNotEmpty) {
            final pos = state.overlays.length - 1;
            return state.overlays[pos];
          }
          return const SizedBox.shrink();
        });
  }
}
