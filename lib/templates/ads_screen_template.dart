import 'dart:io';
import 'package:atomic_design_system/molecules/button/ads_filled_round_icon_button.dart';
import 'package:flutter/material.dart';

class AdsScreenTemplate extends StatelessWidget {
  final Widget child;
  final AppBar? appBar;
  final Color? backgroundColor;
  final bool wrapScroll;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final bool goBack;
  final void Function()? goBackCallback;
  final Widget? title;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? paddingAppBar;
  final Key? scaffoldkey;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;

  const AdsScreenTemplate({
    super.key,
    required this.child,
    this.appBar,
    this.padding,
    this.paddingAppBar,
    this.backgroundColor,
    this.wrapScroll = true,
    this.safeAreaTop = true,
    this.safeAreaBottom = true,
    this.goBack = false,
    this.title,
    this.goBackCallback,
    this.scaffoldkey,
    this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
  });

  Widget _getBody(
    BuildContext context,
    double screenWidth,
    double screenHeight,
  ) {
    return Stack(
      children: [
        Padding(
          padding: paddingAppBar ?? EdgeInsets.zero,
          child: Row(
            children: [
              if (Platform.isAndroid) SizedBox(height: screenHeight * 0.08),
              if (goBack)
                AdsFilledRoundIconButton(
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                  ),
                  onPressedCallback: () {
                    if (goBackCallback != null) {
                      goBackCallback!();
                    }
                    Navigator.pop(context);
                  },
                ),
              SizedBox(width: screenWidth * 0.05),
              if (title != null) title!,
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: goBack || title != null ? screenHeight * 0.08 : 0.00,
          ),
          child: child,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldkey,
      appBar: appBar,
      drawer: drawer,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.background,
      body: SafeArea(
        top: safeAreaTop,
        bottom: safeAreaBottom,
        child: wrapScroll
            ? SingleChildScrollView(
                padding:
                    padding ?? _getDefaultPadding(screenHeight, screenWidth),
                child: _getBody(
                  context,
                  screenWidth,
                  screenHeight,
                ),
              )
            : Padding(
                padding:
                    padding ?? _getDefaultPadding(screenHeight, screenWidth),
                child: _getBody(
                  context,
                  screenWidth,
                  screenHeight,
                ),
              ),
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  EdgeInsets _getDefaultPadding(double screenHeight, double screenWidth) {
    return EdgeInsets.only(
      left: screenWidth * 0.045,
      right: screenWidth * 0.045,
      bottom: screenHeight * 0.05,
    );
  }
}
