import 'dart:math';

import 'package:flutter/material.dart';

import '../core/constants/image_constant.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    super.key,
    required this.child,
    this.title,
    this.actions,
  });

  final Widget child;
  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, // Ensures the body extends behind where the AppBar would be
      appBar: AppBar(
        title: title,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent, // Makes AppBar transparent
        elevation: 0, // Removes shadow from the AppBar
        actions: actions,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.backgroundImages[1]),
            fit: BoxFit.cover, // Covers the entire widget area
          ),
        ),
        child: SafeArea(
            child: MediaQuery.of(context).size.width > 550
                ? Center(
                    child: SizedBox(
                      width:
                          min(MediaQuery.of(context).size.width * 0.80, 1000),
                      child: child,
                    ),
                  )
                : child),
      ),
    );
  }
}
